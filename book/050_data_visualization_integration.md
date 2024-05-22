# Data Visualization Integration

Visualizing data is a powerful way to understand and communicate the underlying patterns and relationships within your dataset. Pandas integrates seamlessly with Matplotlib, a comprehensive library for creating static, animated, and interactive visualizations in Python. This chapter demonstrates how to use Pandas for common data visualizations.

## Histogram

Histograms are used to plot the distribution of a dataset. Here’s how to create a histogram from a DataFrame column:

```python
import pandas as pd
import matplotlib.pyplot as plt

# Sample DataFrame
data = {'scores': [88, 76, 90, 84, 65, 79, 93, 80]}
df = pd.DataFrame(data)

# Creating a histogram
df['scores'].hist()
plt.title('Distribution of Scores')
plt.xlabel('Scores')
plt.ylabel('Frequency')
plt.show()
```

## Boxplot

Boxplots are useful for visualizing the distribution of data through their quartiles and detecting outliers. Here’s how to create boxplots for multiple columns:

```python
# Sample DataFrame
data = {'math_scores': [88, 76, 90, 84, 65],
        'eng_scores': [78, 82, 88, 91, 73]}
df = pd.DataFrame(data)

# Creating a boxplot
df.boxplot(column = ['math_scores', 'eng_scores'])
plt.title('Score Distribution')
plt.ylabel('Scores')
plt.show()
```

## Scatter Plot

Scatter plots are ideal for examining the relationship between two numeric variables. Here’s how to create a scatter plot:

```python
# Sample DataFrame
data = {'hours_studied': [10, 15, 8, 12, 6],
        'test_score': [95, 80, 88, 90, 70]}
df = pd.DataFrame(data)

# Creating a scatter plot
df.plot.scatter(x = 'hours_studied', y = 'test_score', c = 'DarkBlue')
plt.title('Test Score vs Hours Studied')
plt.xlabel('Hours Studied')
plt.ylabel('Test Score')
plt.show()
```

## Line Plot

Line plots are used to visualize data points connected by straight line segments. This is particularly useful in time series analysis:

```python
# Sample DataFrame
data = {'year': [2010, 2011, 2012, 2013, 2014],
        'sales': [200, 220, 250, 270, 300]}
df = pd.DataFrame(data)

# Creating a line plot
df.plot.line(x = 'year', y = 'sales', color = 'red')
plt.title('Yearly Sales')
plt.xlabel('Year')
plt.ylabel('Sales')
plt.show()
```

## Bar Chart

Bar charts are used to compare different groups. Here’s an example of a bar chart visualizing the count of values in a column:

```python
# Sample DataFrame
data = {'product': ['Apples', 'Oranges', 'Bananas', 'Apples', 'Oranges', 'Apples']}
df = pd.DataFrame(data)

# Creating a bar chart
df['product'].value_counts().plot.bar(color = 'green')
plt.title('Product Frequency')
plt.xlabel('Product')
plt.ylabel('Frequency')
plt.show()
```

Each of these visualization techniques provides insights into different aspects of your data, making it easier to perform comprehensive data analysis and interpretation.
