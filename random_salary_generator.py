import numpy as np
import pandas as pd

# Set random seed for reproducibility
np.random.seed(42)

# Number of data points
num_data_points = 1000

# Generate random years of experience between 1 and 30 years
years_experience = np.round(1 + 29 * np.random.rand(num_data_points), 1)

# Generate salary data
# Assuming a base salary of 35000 with a yearly increase and some random noise
base_salary = 35000
salary_increase_per_year = 5000
salary = base_salary + salary_increase_per_year * years_experience
salary_noise = np.random.normal(0, 5000, num_data_points)
salary += salary_noise
salary = np.round(salary, 2)

# Assemble DataFrame
data = pd.DataFrame({'Index': np.arange(num_data_points),'YearsExperience': years_experience,'Salary': salary})

# Output CSV file
data.to_csv('random_salary_data.csv', index=False)

# Print the first few rows of the DataFrame
print(data.head())
