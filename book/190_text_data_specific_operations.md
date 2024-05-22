

# Text Data Specific Operations

Text data often requires specific processing techniques to extract meaningful information or to reformat it for further analysis. Pandas provides a robust set of string operations that can be applied efficiently to Series and DataFrames. This chapter explores some essential operations for handling text data, including searching for substrings, splitting strings, and using regular expressions.

## String Contains

The `contains` method allows you to filter rows based on whether a column's text contains a specified substring. This is useful for subsetting data based on textual content:

```python
import pandas as pd

# Sample DataFrame
data = {'Description': ['Apple is sweet', 'Banana is yellow', 'Cherry is red']}
df = pd.DataFrame(data)

# Filtering rows where the Description column contains 'sweet'
contains_sweet = df[df['Description'].str.contains('sweet')]
print(contains_sweet)
```

Result:

```plaintext
     Description
0  Apple is sweet
```

## String Split

Splitting strings into separate components can be essential for data cleaning and preparation. The `split` method splits each string in the Series/Index by the given delimiter and optionally expands to separate columns:

```python
# Splitting the Description column into words
split_description = df['Description'].str.split(' ', expand = True)
print(split_description)
```

Result:

```plaintext
        0    1     2
0   Apple   is sweet
1  Banana   is yellow
2  Cherry   is    red
```

This splits the 'Description' column into separate columns for each word.

## Regular Expression Extraction

Regular expressions are a powerful tool for extracting patterns from text. The `extract` method applies a regular expression pattern and extracts groups from the first match:

```python
# Extracting the first word where it starts with a capital letter followed by lower case letters
extracted_words = df['Description'].str.extract(r'([A-Z][a-z]+)')
print(extracted_words)
```

Result:

```plaintext
        0
0   Apple
1  Banana
2  Cherry
```

This regular expression extracts the first word from each description, which starts with a capital letter and is followed by lowercase letters.

These text-specific operations in Pandas simplify the process of working with textual data, allowing for efficient and powerful string manipulation and analysis.
