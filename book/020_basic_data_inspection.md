 
# Basic Data Inspection

## Display Top Rows (`df.head()`)

This command,`df.head()`, displays the first five rows of the DataFrame, providing a quick glimpse of the data, including column names and some of the values.

```plaintext
A         B    C          D         E
0  81  0.692744  Yes 2023-01-01 -1.082325
1  54  0.316586  Yes 2023-01-02  0.031455
2  57  0.860911  Yes 2023-01-03 -2.599667
3   6  0.182256   No 2023-01-04 -0.603517
4  82  0.210502   No 2023-01-05 -0.484947
```

## Display Bottom Rows (`df.tail()`)

This command,`df.tail()`, shows the last five rows of the DataFrame, useful for checking the end of your dataset.

```plaintext
    A         B    C          D         E
5  73  0.463415   No 2023-01-06 -0.442890
6  13  0.513276   No 2023-01-07 -0.289926
7  23  0.528147  Yes 2023-01-08  1.521620
8  87  0.138674  Yes 2023-01-09 -0.026802
9  39  0.005347   No 2023-01-10 -0.159331
```

## Display Data Types (`df.dtypes`)

This command, `df.types()`, returns the data types of each column in the DataFrame. It's helpful to understand the kind of data (integers, floats, strings, etc.) each column holds.

```plaintext
A             int64
B           float64
C            object
D    datetime64[ns]
E           float64
```

## Summary Statistics (`df.describe()`)

This command, `df.describe()`, provides descriptive statistics that summarize the central tendency, dispersion, and shape of a dataset’s distribution, excluding `NaN` values. It's useful for a quick statistical overview.

```plaintext
            A          B          E
count  10.000000  10.000000  10.000000
mean   51.500000   0.391186  -0.413633
std    29.963867   0.267698   1.024197
min     6.000000   0.005347  -2.599667
25%    27.000000   0.189317  -0.573874
50%    55.500000   0.390001  -0.366408
75%    79.000000   0.524429  -0.059934
max    87.000000   0.860911   1.521620
```

## Display Index, Columns, and Data (`df.info()`)

This command, `df.info()`, provides a concise summary of the DataFrame, including the number of non-null values in each column and the memory usage. It's essential for initial data assessment.

```plaintext
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 10 entries, 0 to 9
Data columns (total 5 columns):
#   Column  Non-Null Count  Dtype
---  ------  --------------  -----
0   A       10 non-null     int64
1   B       10 non-null     float64
2   C       10 non-null     object
3   D       10 non-null     datetime64[ns]
4   E       10 non-null     float64
dtypes: datetime64[ns](1), float64(2), int64(1), object(1)
memory usage: 528.0 bytes
```
