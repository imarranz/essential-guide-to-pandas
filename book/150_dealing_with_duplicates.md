
# Dealing with Duplicates

Duplicate data can skew analysis and lead to incorrect conclusions, making it essential to identify and handle duplicates effectively. Pandas provides straightforward tools to find and remove duplicates in your datasets. This chapter will guide you through these processes.

## Finding Duplicates

The `duplicated()` function returns a boolean series indicating whether each row is a duplicate of a row that appeared earlier in the DataFrame. Here's how to use it:

```python
import pandas as pd

# Sample DataFrame
data = {'name': ['Alice', 'Bob', 'Charlie', 'Bob', 'Charlie'],
        'age': [25, 30, 35, 30, 35]}
df = pd.DataFrame(data)

# Finding duplicates
duplicates = df.duplicated()
print(duplicates)
```

Result:

```plaintext
0    False
1    False
2    False
3     True
4     True
dtype: bool
```

In this output, `True` indicates that the row is a duplicate of an earlier row in the DataFrame.

## Removing Duplicates

To remove the duplicate rows from the DataFrame, use the `drop_duplicates()` function. By default, this function keeps the first occurrence and removes subsequent duplicates.

```python
# Removing duplicates
df_unique = df.drop_duplicates()
print(df_unique)
```

Result:

```plaintext
      name  age
0    Alice   25
1      Bob   30
2  Charlie   35
```

This method has removed rows 3 and 4, which were duplicates of earlier rows. You can also customize this behavior with the `keep` parameter, which can be set to `'last'` to keep the last occurrence instead of the first, or `False` to remove all duplicates entirely.

These techniques are essential for ensuring data quality, enabling accurate and reliable data analysis by maintaining only unique data entries in your DataFrame.


