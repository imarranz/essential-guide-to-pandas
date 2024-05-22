
# Data Formatting and Conversion

Data often needs to be formatted or converted to different types to meet the requirements of various analysis tasks. Pandas provides versatile capabilities for data formatting and type conversion, allowing for effective manipulation and preparation of data. This chapter covers some essential operations for data formatting and conversion.

## Convert Data Types

Changing the data type of a column in a DataFrame is often necessary during data cleaning and preparation. Use `astype` to convert the data type of a column:

```python
import pandas as pd

# Sample DataFrame
data = {'age': ['25', '30', '35']}
df = pd.DataFrame(data)

# Converting the data type of the 'age' column to integer
df['age'] = df['age'].astype(int)
print(df['age'].dtypes)
```

Result:

```plaintext
int64
```

## String Operations

Pandas can perform vectorized string operations on Series using `.str`. This is useful for cleaning and transforming text data:

```python
# Sample DataFrame
data = {'name': ['Alice', 'Bob', 'Charlie']}
df = pd.DataFrame(data)

# Converting all names to lowercase
df['name'] = df['name'].str.lower()
print(df)
```

Result:

```plaintext
      name
0    alice
1      bob
2  charlie
```

## Datetime Conversion

Converting strings or other datetime formats into a standardized `datetime64` type is essential for time series analysis. Use `pd.to_datetime` to convert a column:

```python
# Sample DataFrame
data = {'date': ['2023-01-01', '2023-01-02', '2023-01-03']}
df = pd.DataFrame(data)

# Converting 'date' column to datetime
df['date'] = pd.to_datetime(df['date'])
print(df['date'].dtypes)
```

Result:

```plaintext
datetime64[ns]
```

## Setting Index

Setting a specific column as the index of a DataFrame can facilitate faster searches, better alignment, and easier access to rows:

```python
# Sample DataFrame
data = {'name': ['Alice', 'Bob', 'Charlie'],
        'age': [25, 30, 35]}
df = pd.DataFrame(data)

# Setting 'name' as the index
df.set_index('name', inplace=True)
print(df)
```

Result:

```plaintext
          age
name
Alice      25
Bob        30
Charlie    35
```

These formatting and conversion techniques are crucial for preparing your dataset for detailed analysis and ensuring compatibility across different analysis and visualization tools.


