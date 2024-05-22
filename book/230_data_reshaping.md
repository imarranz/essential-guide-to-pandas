
# Data Reshaping

Data reshaping is a crucial aspect of data preparation that involves transforming data between wide format (with more columns) and long format (with more rows), depending on the needs of your analysis. This chapter demonstrates how to reshape data from wide to long formats and vice versa using Pandas.

## Wide to Long Format

The `wide_to_long` function in Pandas is a powerful tool for transforming data from wide format to long format, which is often more amenable to analysis in Pandas:

```python
import pandas as pd

# Sample DataFrame in wide format
data = {
    'id': [1, 2],
    'A_2020': [100, 200],
    'A_2021': [150, 250],
    'B_2020': [300, 400],
    'B_2021': [350, 450]
}
df = pd.DataFrame(data)

# Transforming from wide to long format
long_df = pd.wide_to_long(df, stubnames = ['A', 'B'], sep = '_', i = 'id', j = 'year')
print(long_df)
```

Result:

```plaintext
           A    B
id year
1  2020  100  300
   2021  150  350
2  2020  200  400
   2021  250  450
```

This output represents a DataFrame in long format where each row corresponds to a single year for each variable (A and B) and each id.

## Long to Wide Format

Converting data from long to wide format involves creating a pivot table, which can simplify certain types of data analysis by displaying data with one variable per column and combinations of other variables per row:

```python
# Assuming long_df is the DataFrame in long format from the previous example
# We will use a slight modification for clarity
long_data = {
    'id': [1, 1, 2, 2],
    'year': [2020, 2021, 2020, 2021],
    'A': [100, 150, 200, 250],
    'B': [300, 350, 400, 450]
}
long_df = pd.DataFrame(long_data)

# Transforming from long to wide format
wide_df = long_df.pivot(index = 'id', columns = 'year')
print(wide_df)
```

Result:

```plaintext
       A         B
year 2020 2021 2020 2021
id
1    100  150  300  350
2    200  250  400  450
```

This result demonstrates a DataFrame in wide format where each `id` has associated values of A and B for each year spread across multiple columns.

Reshaping data effectively allows for easier analysis, particularly when dealing with panel data or time series that require operations across different dimensions.
