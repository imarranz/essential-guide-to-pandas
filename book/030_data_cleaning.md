# Data Cleaning

Let's go through the data cleaning process in a more detailed manner, step by step. We will start by creating a DataFrame that includes missing (`NA` or `null`) values, then apply various data cleaning operations, showing both the commands used and the resulting outputs.

First, we create a sample DataFrame that includes some missing values:

```python
import pandas as pd

# Sample DataFrame with missing values
data = {
    'old_name': [1, 2, None, 4, 5],
    'B': [10, None, 12, None, 14],
    'C': ['A', 'B', 'C', 'D', 'E'],
    'D': pd.date_range(start = '2023-01-01', periods = 5, freq = 'D'),
    'E': [20, 21, 22, 23, 24]
}
df = pd.DataFrame(data)
```

This DataFrame contains missing values in columns 'old_name' and 'B'.

## Checking for Missing Values

To find out where the missing values are located, we use:

```python
missing_values = df.isnull().sum()
```

Result:

```plaintext
old_name    1
B           2
C           0
D           0
E           0
dtype: int64
```

## Filling Missing Values

We can fill missing values with a specific value or a computed value (like the mean of the column):

```python
filled_df = df.fillna({'old_name': 0, 'B': df['B'].mean()})
```

Result:

```plaintext
   old_name     B  C          D   E
0       1.0  10.0  A 2023-01-01  20
1       2.0  12.0  B 2023-01-02  21
2       0.0  12.0  C 2023-01-03  22
3       4.0  12.0  D 2023-01-04  23
4       5.0  14.0  E 2023-01-05  24
```

## Dropping Missing Values

Alternatively, we can drop rows with missing values:

```python
dropped_df = df.dropna(axis = 'index')
```

Result:

```plaintext
   old_name     B  C          D   E
0       1.0  10.0  A 2023-01-01  20
4       5.0  14.0  E 2023-01-05  24
```

We can also drop columns with missing values:

```python
dropped_df = df.dropna(axis = 'columns')
```

Result:

```plaintext
   C          D   E
0  A 2023-01-01  20
1  B 2023-01-02  21
2  C 2023-01-03  22
3  D 2023-01-04  23
4  E 2023-01-05  24
```


## Renaming Columns

To rename columns for clarity or standardization:

```python
renamed_df = df.rename(columns = {'old_name': 'A'})
```

Result:

```plaintext
     A     B  C          D   E
0  1.0  10.0  A 2023-01-01  20
1  2.0   NaN  B 2023-01-02  21
2  NaN  12.0  C 2023-01-03  22
3  4.0   NaN  D 2023-01-04  23
4  5.0  14.0  E 2023-01-05  24
```

## Dropping Columns

To remove unnecessary columns:

```python
dropped_columns_df = df.drop(columns = ['E'])
```

Result:

```plaintext
   old_name     B  C          D
0       1.0  10.0  A 2023-01-01
1       2.0   NaN  B 2023-01-02
2       NaN  12.0  C 2023-01-03
3       4.0   NaN  D 2023-01-04
4       5.0  14.0  E 2023-01-05
```

Each of these steps demonstrates a fundamental aspect of data cleaning in Pandas, crucial for preparing your dataset for further analysis.
