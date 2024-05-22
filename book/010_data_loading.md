# Data Loading

Efficient data loading is fundamental to any data analysis process. Pandas offers several functions to read data from different formats, making it easier to manipulate and analyze the data. In this chapter, we will explore how to read data from CSV files, Excel files, and SQL databases using Pandas.

## Read CSV File

The `read_csv` function is used to load data from CSV files into a DataFrame. This function is highly customizable with numerous parameters to handle different formats and data types. Here is a basic example:

```python
import pandas as pd

# Load data from a CSV file into a DataFrame
df = pd.read_csv('filename.csv')
```

This command reads data from 'filename.csv' and stores it in the DataFrame `df`. The file path can be a URL or a local file path.

## Read Excel File

To read data from an Excel file, use the `read_excel` function. This function supports reading from both xls and xlsx file formats and allows you to specify the sheet to be loaded.

```python
# Load data from an Excel file into a DataFrame
df = pd.read_excel('filename.xlsx')
```

This reads the first sheet in the Excel workbook 'filename.xlsx' by default. You can specify a different sheet by using the `sheet_name` parameter.

## Read from SQL Database

Pandas can also load data directly from a SQL database using the `read_sql` function. This function requires a SQL query and a connection object to the database.

```python
import sqlalchemy

# Create a connection to a SQL database
engine = sqlalchemy.create_engine('sqlite:///example.db')
query = "SELECT * FROM my_table"

# Load data from a SQL database into a DataFrame
df = pd.read_sql(query, engine)
```

This example demonstrates how to connect to a SQLite database and read data from 'my_table' into a DataFrame.
