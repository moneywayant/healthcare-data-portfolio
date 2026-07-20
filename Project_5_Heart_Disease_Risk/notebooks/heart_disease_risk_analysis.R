# Heart Disease Risk Analysis
#
# Companion R script for reviewers who prefer a plain R file over the
# Jupyter notebook. Run from the repository root or from this notebooks folder.

suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  library(ggplot2)
})

candidate_paths <- c(
  "../data/heart_disease_cleaned_data.csv",
  "Project_5_Heart_Disease_Risk/data/heart_disease_cleaned_data.csv",
  "data/heart_disease_cleaned_data.csv"
)

data_path <- candidate_paths[file.exists(candidate_paths)][1]
if (is.na(data_path)) {
  stop("Could not find heart_disease_cleaned_data.csv. Run from the repo root or Project_5_Heart_Disease_Risk/notebooks.")
}

heart_data <- read_csv(data_path, show_col_types = FALSE) %>%
  mutate(
    gender = if_else(sex == 1, "Male", "Female"),
    heart_status = if_else(heart_disease == 1, "Has Disease", "No Disease")
  )

summary_table <- heart_data %>%
  summarize(
    records = n(),
    heart_disease_cases = sum(heart_disease == 1, na.rm = TRUE),
    heart_disease_rate = mean(heart_disease == 1, na.rm = TRUE),
    avg_age = mean(age, na.rm = TRUE),
    avg_cholesterol = mean(chol, na.rm = TRUE),
    avg_max_heart_rate = mean(thalach, na.rm = TRUE)
  )

print(summary_table)

output_dir <- "outputs"
dir.create(output_dir, showWarnings = FALSE)

ggplot(heart_data, aes(x = gender, fill = heart_status)) +
  geom_bar(position = "dodge") +
  labs(
    title = "Heart Disease by Gender",
    x = "Gender",
    y = "Number of Patients",
    fill = "Heart Disease Status"
  ) +
  scale_fill_manual(values = c("No Disease" = "#4CAF50", "Has Disease" = "#F44336")) +
  theme_minimal()

ggsave(file.path(output_dir, "heart_disease_by_gender.png"), width = 6, height = 4)

ggplot(heart_data, aes(x = chol)) +
  geom_histogram(binwidth = 10, fill = "#2196F3", color = "white") +
  labs(
    title = "Distribution of Cholesterol Levels",
    x = "Cholesterol",
    y = "Number of Patients"
  ) +
  theme_minimal()

ggsave(file.path(output_dir, "cholesterol_distribution.png"), width = 6, height = 4)

ggplot(heart_data, aes(x = heart_status, y = age, fill = heart_status)) +
  geom_boxplot() +
  labs(
    title = "Age Distribution by Heart Disease Status",
    x = "Heart Disease Status",
    y = "Age"
  ) +
  scale_fill_manual(values = c("No Disease" = "#4CAF50", "Has Disease" = "#F44336")) +
  theme_minimal()

ggsave(file.path(output_dir, "age_by_heart_disease.png"), width = 6, height = 4)

numeric_data <- heart_data %>%
  select(age, trestbps, chol, thalach, oldpeak, heart_disease)

cor_matrix <- round(cor(numeric_data, use = "complete.obs"), 2)
cor_data <- as.data.frame(as.table(cor_matrix))
colnames(cor_data) <- c("Var1", "Var2", "Correlation")

ggplot(cor_data, aes(x = Var1, y = Var2, fill = Correlation)) +
  geom_tile(color = "white") +
  geom_text(aes(label = Correlation), size = 4) +
  scale_fill_gradient2(low = "#F44336", high = "#4CAF50", mid = "white", midpoint = 0) +
  labs(
    title = "Correlation Heatmap of Numeric Variables",
    x = "",
    y = ""
  ) +
  theme_minimal()

ggsave(file.path(output_dir, "correlation_heatmap.png"), width = 6, height = 5)
