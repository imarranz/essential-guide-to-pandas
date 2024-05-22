# Data Transformation

Data transformation is a crucial step in preparing your dataset for analysis. Pandas provides powerful tools to transform, summarize, and combine data efficiently. This chapter covers key techniques such as applying functions, grouping and aggregating data, creating pivot tables, and merging or concatenating DataFrames.

## Apply Function

The `apply` function allows you to apply a custom function to the DataFrame elements. This method is extremely flexible and can be applied to a single column or the entire DataFrame. Here’s an example using `apply` on a single column to calculate the square of each value:

```python
import pandas as pd

# Sample DataFrame
data = {'number': [1, 2, 3, 4, 5]}
df = pd.DataFrame(data)

# Applying a lambda function to square each value
df['squared'] = df['number'].apply(lambda x: x**2)
```

Result:

```plaintext
   number  squared
0       1        1
1       2        4
2       3        9
3       4       16
4       5       25
```

## Group By and Aggregate

Grouping and aggregating data are essential for summarizing data. Here’s how you can group by one column and aggregate another column using `sum`:

```python
# Sample DataFrame
data = {'group': ['A', 'A', 'B', 'B', 'C'],
        'value': [10, 15, 10, 20, 30]}
df = pd.DataFrame(data)

# Group by the 'group' column and sum the 'value' column
grouped_df = df.groupby('group').agg({'value': 'sum'})
```

Result:

```plaintext
       value
group
A         25
B         30
C         30
```

## Pivot Tables

Pivot tables are used to summarize and reorganize data in a DataFrame. Here’s an example of creating a pivot table to find the mean values:

```python
# Sample DataFrame
data = {'category': ['A', 'A', 'B', 'B', 'A'],
        'value': [100, 200, 300, 400, 150]}
df = pd.DataFrame(data)

# Creating a pivot table
pivot_table = df.pivot_table(index = 'category', values = 'value', aggfunc = 'mean')
```

Result:

```plaintext
          value
category
A         150.0
B         350.0
```

## Merge DataFrames

Merging DataFrames is akin to performing SQL joins. Here’s an example of merging two DataFrames on a common column:

```python
# Sample DataFrames
data1 = {'id': [1, 2, 3],
         'name': ['Alice', 'Bob', 'Charlie']}
df1 = pd.DataFrame(data1)
data2 = {'id': [1, 2, 4],
         'age': [25, 30, 35]}
df2 = pd.DataFrame(data2)

# Merging df1 and df2 on the 'id' column
merged_df = pd.merge(df1, df2, on = 'id')
```

Result:

```plaintext
   id     name  age
0   1    Alice   25
1   2      Bob   30
```

## Concatenate DataFrames

Concatenating DataFrames is useful when you need to combine similar data from different sources. Here’s how to concatenate two DataFrames:

```python
# Sample DataFrames
data3 = {'name': ['David', 'Ella'],
         'age': [28, 22]}
df3 = pd.DataFrame(data3)

# Concatenating df2 and df3
concatenated_df = pd.concat([df2, df3])
```

Result:

```plaintext
   id   age   name
0  1.0   25    NaN
1  2.0   30    NaN
2  4.0   35    NaN
0  NaN   28  David
1  NaN   22   Ella
```

These techniques provide a robust framework for transforming data, allowing you to prepare and analyze your datasets more effectively.
