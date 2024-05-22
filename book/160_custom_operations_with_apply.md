
# Custom Operations with Apply

The `apply` function in Pandas is highly versatile, allowing you to execute custom functions across an entire DataFrame or along a specified axis. This flexibility makes it indispensable for performing complex operations that are not directly supported by built-in methods. This chapter will demonstrate how to use `apply` for custom operations.

## Custom Apply Functions

Using `apply` with a lambda function allows you to define inline functions to apply to each row or column of a DataFrame. Here is how you can use a custom function to process data row-wise:

```python
import pandas as pd

# Define a custom function
def custom_func(x, y):
    return x * 2 + y

# Sample DataFrame
data = {'col1': [1, 2, 3],
        'col2': [4, 5, 6]}
df = pd.DataFrame(data)

# Applying a custom function row-wise
df['result'] = df.apply(lambda row: custom_func(row['col1'], row['col2']), axis = 1)
print(df)
```

Result:

```plaintext
   col1  col2  result
0     1     4       6
1     2     5       9
2     3     6      12
```

In this example, the `custom_func` is applied to each row of the DataFrame using `apply`. The function calculates a new value based on columns 'col1' and 'col2' for each row, and the results are stored in a new column 'result'.

This method of applying custom functions is powerful for data manipulation and transformation, allowing for operations that go beyond simple arithmetic or aggregation. It's particularly useful when you need to perform operations that are specific to your data and not provided by Pandas' built-in methods.
