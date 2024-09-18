# Step 1: Load necessary libraries
library(ggplot2)

# Step 2: Load the dataset from CSV file
# Replace the file path with the actual path where your dataset is stored
data <- read.csv("C:/Users/91807/Downloads/data_application_energy.csv")

# Step 3: Perform linear regression (Appliances ~ T_out)
lm_model <- lm(Appliances ~ T_out, data = data)

# Step 4: Create a scatter plot of Appliances vs. T_out with the regression line
ggplot(data, aes(x = T_out, y = Appliances)) +
  geom_point(alpha = 0.5, color = "blue") +                             # Scatter plot with transparency
  geom_smooth(method = "lm", color = "red", se = FALSE) +               # Regression line without confidence interval shading
  labs(title = "Linear Regression: Appliances Energy Consumption vs. Outdoor Temperature",
       x = "Outdoor Temperature (°C)",                                  # X-axis label
       y = "Appliances Energy Consumption (Wh)") +                      # Y-axis label
  theme_minimal()                                                       # Use a minimal theme for better visual presentation

# Step 5: Print the summary of the linear regression model
summary(lm_model)

