
# Data Merging Techniques

Merging data is a fundamental aspect of many data analysis tasks, especially when combining information from multiple sources. Pandas provides powerful functions to merge DataFrames in a manner similar to SQL joins. This chapter will cover four primary types of merges: outer, inner, left, and right joins.

## Outer Join

An outer join returns all records when there is a match in either the left or right DataFrame. If there is no match, the missing side will contain `NaN`.

```python
import pandas as pd

# Sample DataFrames
data1 = {'column': ['A', 'B', 'C'],
         'values1': [1, 2, 3]}
df1 = pd.DataFrame(data1)
data2 = {'column': ['B', 'C', 'D'],
         'values2': [4, 5, 6]}
df2 = pd.DataFrame(data2)

# Performing an outer join
outer_joined = pd.merge(df1, df2, on = 'column', how = 'outer')
print(outer_joined)
```

Result:

```plaintext
  column  values1  values2
0      A      1.0      NaN
1      B      2.0      4.0
2      C      3.0      5.0
3      D      NaN      6.0
```

## Inner Join

An inner join returns records that have matching values in both DataFrames.

```python
# Performing an inner join
inner_joined = pd.merge(df1, df2, on = 'column', how = 'inner')
print(inner_joined)
```

Result:

```plaintext
  column  values1  values2
0      B        2        4
1      C        3        5
```

## Left Join

A left join returns all records from the left DataFrame, and the matched records from the right DataFrame. The result is `NaN` in the right side where there is no match.

```python
# Performing a left join
left_joined = pd.merge(df1, df2, on = 'column', how = 'left')
print(left_joined)
```

Result:

```plaintext
  column  values1  values2
0      A        1      NaN
1      B        2      4.0
2      C        3      5.0
```

## Right Join

A right join returns all records from the right DataFrame, and the matched records from the left DataFrame. The result is `NaN` in the left side where there is no match.

```python
# Performing a right join
right_joined = pd.merge(df1, df2, on = 'column', how = 'right')
print(right_joined)
```

Result:

```plaintext
  column  values1  values2
0      B        2      4.0
1      C        3      5.0
2      D      NaN      6.0
```

These data merging techniques are crucial for combining data from different sources, allowing for more comprehensive analyses by creating a unified dataset from multiple disparate sources.
