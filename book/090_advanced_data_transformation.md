
# Advanced Data Transformation

Advanced data transformation involves sophisticated techniques that help in reshaping, restructuring, and summarizing complex datasets. This chapter delves into some of the more advanced functions available in Pandas that enable detailed manipulation and transformation of data.

## Lambda Functions

Lambda functions provide a quick and efficient way of applying an operation across a DataFrame. Here’s how you can use `apply` with a lambda function to increment every element in the DataFrame:

```python
import pandas as pd

# Sample DataFrame
data = {'A': [1, 2, 3],
        'B': [4, 5, 6]}
df = pd.DataFrame(data)

# Applying a lambda function to add 1 to each element
df = df.apply(lambda x: x + 1)
print(df)
```

Result:

```plaintext
   A  B
0  2  5
1  3  6
2  4  7
```

## Pivot Longer/Wider Format

The `melt` function is used to transform data from wide format to long format, which can be more suitable for analysis:

```python
# Example of melting a DataFrame
data = {'Name': ['Alice', 'Bob'],
        'Age': [25, 30],
        'Salary': [50000, 60000]}
df = pd.DataFrame(data)

# Pivoting from wider to longer format
df_long = df.melt(id_vars = ['Name'])
print(df_long)
```

Result:

```plaintext
    Name variable  value
0  Alice      Age     25
1    Bob      Age     30
2  Alice   Salary  50000
3    Bob   Salary  60000
```

## Stack/Unstack

Stacking and unstacking are powerful for reshaping a DataFrame by pivoting the columns or the index:

```python
# Stacking and unstacking example
df = pd.DataFrame(data)

# Stacking
stacked = df.stack()
print(stacked)

# Unstacking
unstacked = stacked.unstack()
print(unstacked)
```

Result for stack:

```plaintext
0  Name      Alice
   Age          25
   Salary    50000
1  Name        Bob
   Age          30
   Salary    60000
dtype: object
```

Result for unstack:

```plaintext
    Name Age Salary
0  Alice  25  50000
1    Bob  30  60000
```

## Cross Tabulations

Cross tabulations are used to compute a simple cross-tabulation of two (or more) factors. This can be very useful in statistics and probability analysis:

```python
# Cross-tabulation example
data = {'Gender': ['Female', 'Male', 'Female', 'Male'],
        'Handedness': ['Right', 'Left', 'Right', 'Right']}
df = pd.DataFrame(data)

# Creating a cross tabulation
crosstab = pd.crosstab(df['Gender'], df['Handedness'])
print(crosstab)
```

Result:

```plaintext
Handedness  Left  Right
Gender
Female        0      2
Male          1      1
```

These advanced transformations enable sophisticated handling of data structures, enhancing the ability to analyze complex datasets effectively.


