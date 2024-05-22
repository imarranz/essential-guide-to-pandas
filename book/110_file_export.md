
# File Export

Once data analysis is complete, it is often necessary to export data into various formats for reporting, further analysis, or sharing. Pandas provides versatile tools to export data to different file formats, including CSV, Excel, and SQL databases. This chapter will cover how to export DataFrames to these common formats.

## Write to CSV

Exporting a DataFrame to a CSV file is straightforward and one of the most common methods for data sharing:

```python
import pandas as pd

# Sample DataFrame
data = {'name': ['Alice', 'Bob', 'Charlie'],
        'age': [25, 30, 35]}
df = pd.DataFrame(data)

# Writing the DataFrame to a CSV file
df.to_csv('filename.csv', index = False)  # index=False to avoid writing row indices
```

This function will create a CSV file named `filename.csv` in the current directory without the index column.

## Write to Excel

Exporting data to an Excel file can be done using the `to_excel` method, which allows for the storage of data along with formatting that can be useful for reports:

```python
# Writing the DataFrame to an Excel file
df.to_excel('filename.xlsx', index = False)  # index=False to avoid writing row indices
```

This will create an Excel file `filename.xlsx` in the current directory.

## Write to SQL Database

Pandas can also export a DataFrame directly to a SQL database, which is useful for integrating analysis results into applications or storing data in a centralized database:

```python
import sqlalchemy

# Creating a SQL connection engine
engine = sqlalchemy.create_engine('sqlite:///example.db')  # Example using SQLite

# Writing the DataFrame to a SQL database
df.to_sql('table_name',
          con = engine,
          index = False,
          if_exists = 'replace')
```

The `to_sql` function will create a new table named `table_name` in the specified SQL database and write the DataFrame to this table. The `if_exists='replace'` parameter will replace the table if it already exists; use `if_exists='append'` to add data to an existing table instead.

These export functionalities enhance the versatility of Pandas, allowing for seamless transitions between different stages of data processing and sharing.
