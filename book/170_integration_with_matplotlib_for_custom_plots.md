
# Integration with Matplotlib for Custom Plots

Visualizing data is a key step in data analysis, providing insights that are not apparent from raw data alone. Pandas integrates smoothly with Matplotlib, a popular plotting library in Python, to offer versatile options for data visualization. This chapter will show how to create custom plots using Pandas and Matplotlib.

## Custom Plotting

Pandas' plotting capabilities are built on Matplotlib, allowing for straightforward generation of various types of plots directly from DataFrame and Series objects.

### Line Plot

Here's how to create a simple line plot displaying trends over a series of values:

```python
import pandas as pd
import matplotlib.pyplot as plt

# Sample data
data = {'Year': [2010, 2011, 2012, 2013, 2014],
        'Sales': [100, 150, 200, 250, 300]}
df = pd.DataFrame(data)

# Plotting
df.plot(x = 'Year', y = 'Sales', kind = 'line')
plt.title('Yearly Sales')
plt.ylabel('Sales')
plt.show()
```

### Histogram

Histograms are great for visualizing the distribution of numerical data:

```python
# Sample data
data = {'Grades': [88, 92, 80, 89, 90, 78, 84, 76, 95, 92]}
df = pd.DataFrame(data)

# Plotting a histogram
df['Grades']\
    .plot(kind = 'hist',
          bins = 5,
          alpha = 0.7)
plt.title('Distribution of Grades')
plt.xlabel('Grades')
plt.show()
```

### Scatter Plot

Scatter plots are used to observe relationships between variables:

```python
# Sample data
data = {'Hours': [1, 2, 3, 4, 5],
        'Scores': [77, 78, 85, 93, 89]}
df = pd.DataFrame(data)

# Creating a scatter plot
df.plot(kind = 'scatter', x = 'Hours', y = 'Scores')
plt.title('Test Scores by Hours Studied')
plt.xlabel('Hours Studied')
plt.ylabel('Test Scores')
plt.show()
```

### Bar Chart

Bar charts are useful for comparing quantities corresponding to different groups:

```python
# Sample data
data = {'Bars': ['A', 'B', 'C', 'D'],
        'Values': [10, 15, 7, 10]}
df = pd.DataFrame(data)

# Creating a bar chart
df.plot(kind = 'bar',
        x = 'Bars',
        y = 'Values',
        color = 'blue',
        legend = None)
plt.title('Bar Chart Example')
plt.ylabel('Values')
plt.show()
```

These examples illustrate how to integrate Pandas with Matplotlib to create informative and visually appealing plots. This integration is vital for analyzing trends, distributions, relationships, and patterns in data effectively.
