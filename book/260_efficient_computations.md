
# Efficient Computations

Efficient computation is key in handling large datasets or performing complex operations rapidly. Pandas includes features that leverage optimized code paths to speed up operations and reduce memory usage. This chapter discusses using `eval()` for arithmetic operations and the `query()` method for filtering, which are both designed to enhance performance.

## Use of eval() for Efficient Operations

The `eval()` function in Pandas allows for the evaluation of string expressions using DataFrame columns, which can be significantly faster, especially for large DataFrames, as it avoids intermediate data copies:

```python
import pandas as pd

# Sample DataFrame
data = {'col1': [1, 2, 3],
        'col2': [4, 5, 6]}
df = pd.DataFrame(data)

# Using eval() to perform efficient operations
df['col3'] = df.eval('col1 + col2')
print(df)
```

Result:

```plaintext
   col1  col2  col3
0     1     4     5
1     2     5     7
2     3     6     9
```

This example demonstrates how to add two columns using `eval()`, which can be faster than traditional methods for large datasets due to optimized computation.

## Query Method for Filtering

The `query()` method allows you to filter DataFrame rows using an intuitive query string, which can be more readable and performant compared to traditional Boolean indexing:

```python
# Sample DataFrame
data = {'col1': [10, 20, 30],
        'col2': [20, 15, 25]}
df = pd.DataFrame(data)

# Using query() to filter data
filtered_df = df.query('col1 < col2')
print(filtered_df)
```

Result:

```plaintext
   col1  col2
0    10    20
```

In this example, `query()` filters the DataFrame for rows where 'col1' is less than 'col2'. This method can be especially efficient when working with large DataFrames, as it utilizes numexpr for fast evaluation of array expressions.

These methods enhance Pandas' performance, making it a powerful tool for data analysis, particularly when working with large or complex datasets. Efficient computations ensure that resources are optimally used, speeding up data processing and analysis.
