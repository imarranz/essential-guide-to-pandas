
# Working with JSON and XML

In today's data-driven world, JSON (JavaScript Object Notation) and XML (eXtensible Markup Language) are two of the most common formats used for storing and transferring data on the web. Pandas provides built-in functions to easily read these formats into DataFrames, facilitating the analysis of structured data. This chapter explains how to read JSON and XML files using Pandas.

## Reading JSON

JSON is a lightweight format that is easy for humans to read and write, and easy for machines to parse and generate. Pandas can directly read JSON data into a DataFrame:

```python
import pandas as pd

# Reading JSON data
df = pd.read_json('filename.json')
print(df)
```

This method will convert a JSON file into a DataFrame. The keys of the JSON object will correspond to column names, and the values will form the data entries for the rows.

## Reading XML

XML is used for representing documents with a structured markup. It is more verbose than JSON but allows for a more structured hierarchy. Pandas can read XML data into a DataFrame, similar to how it reads JSON:

```python
# Reading XML data
df = pd.read_xml('filename.xml')
print(df)
```

This will parse an XML file and create a DataFrame. The tags of the XML file will typically define the columns, and their respective content will be the data for the rows.

These functionalities allow for seamless integration of data from web sources and other systems that utilize JSON or XML for data interchange. By leveraging Pandas' ability to work with these formats, analysts can focus more on analyzing the data rather than spending time on data preparation.
