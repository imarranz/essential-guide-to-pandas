

# Advanced File Handling

Handling files with various configurations and formats is a common necessity in data analysis. Pandas provides extensive capabilities for reading from and writing to different file types with varying delimiters and formats. This chapter will explore reading CSV files with specific delimiters and writing DataFrames to JSON files.

## Read CSV with Specific Delimiter

CSV files can come with different delimiters like commas (`,`), semicolons (`;`), or tabs (`\t`). Pandas allows you to specify the delimiter when reading these files, which is crucial for correctly parsing the data.

### Reading CSV with Semicolon Delimiter

Suppose you have a CSV file `filename.csv` with the following content:

```
Name;Age;City
Alice;30;New York
Bob;25;Los Angeles
Charlie;35;Chicago
```

To read this CSV file into a DataFrame using Pandas, specify the semicolon as the delimiter:

```python
import pandas as pd

# Reading a CSV file with semicolon delimiter
df = pd.read_csv('filename.csv', delimiter = ';')
print(df)
```

Result:

```plaintext
      Name  Age         City
0    Alice   30     New York
1      Bob   25  Los Angeles
2  Charlie   35      Chicago
```

### Reading CSV with Tab Delimiter

If the CSV file uses tabs as delimiters, here’s how you might see the file and read it:

File content (`filename_tab.csv`):

```
Name	Age	City
Alice	30	New York
Bob	25	Los Angeles
Charlie	35	Chicago
```

To read this file:

```python
# Reading a CSV file with tab delimiter
df_tab = pd.read_csv('filename_tab.csv', delimiter = '\t')
print(df_tab)
```

Result:

```plaintext
      Name  Age         City
0    Alice   30     New York
1      Bob   25  Los Angeles
2  Charlie   35      Chicago
```

## Writing to JSON

Writing data to JSON format can be useful for web applications and APIs. Here's how to write a DataFrame to a JSON file:

```python
# DataFrame to write to JSON
df.to_json('filename.json')
```

Assuming `df` contains the previous data, the JSON file `filename.json` would look like this:

```json
{"Name":{"0":"Alice","1":"Bob","2":"Charlie"},"Age":{"0":30,"1":25,"2":35},"City":{"0":"New York","1":"Los Angeles","2":"Chicago"}}
```

This format is known as 'column-oriented' JSON. Pandas also supports other JSON orientations which can be specified using the `orient` parameter.

These advanced file handling techniques ensure that you can work with a wide range of file formats and configurations, facilitating data sharing and integration across different systems and applications.
