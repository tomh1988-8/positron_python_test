import pandas as pd
import matplotlib.pyplot as plt

# Create a simple DataFrame
data = {
    "Name": ["Alice", "Bob", "Charlie"],
    "Age": [25, 30, 35],
    "City": ["New York", "Los Angeles", "Chicago"],
}

df = pd.DataFrame(data)

# Inspect the DataFrame
print(df.head())  # Display the first few rows
print(df.info())  # Display information about the DataFrame
print(df.describe())  # Display summary statistics

# Create a simple plot
plt.bar(df["Name"], df["Age"])
plt.xlabel("Name")
plt.ylabel("Age")
plt.title("Ages of People")
plt.show()

# * Actual comment
# ! Actual comment
# ? Actual comment
# TODO: Actual comment
