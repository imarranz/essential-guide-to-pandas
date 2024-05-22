# Essential Guide to Pandas

<p align="center">
  <img src="figures/essential-guide-to-pandas-logo.png" alt="essential-guide-to-pandas">
</p>

<p align="center">
  <a href="https://github.com/imarranz/essential-guide-to-pandas/pulls">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?longCache=true" alt="Pull Requests">
  </a>
  <a href="LICENSE.md">
    <img src="https://img.shields.io/badge/License-MIT-red.svg?longCache=true" alt="MIT License">
  </a>
   <a href="https://github.com/imarranz/essential-guide-to-pandas"><img src="https://img.shields.io/github/stars/imarranz/essential-guide-to-pandas" alt="Stars"/></a>
  </a>
</p>

<p align="center">
  <a href="https://twitter.com/imarranz" target="_blank">
    <img src="https://img.shields.io/twitter/follow/imarranz.svg?logo=twitter">
  </a>
</p>


Welcome to the repository for **Essential Guide to Pandas** a comprehensive guide designed to harness the power of the [Pandas](https://pandas.pydata.org/) library for data analysis and manipulation. This manual covers a wide range of topics from basic data loading to advanced data merging techniques, making it an indispensable resource for data scientists, analysts, and anyone interested in learning [Pandas](https://pandas.pydata.org/).

## Repository Structure

This repository contains the Markdown files for each chapter of the book, which can be compiled into a single PDF document for ease of reading and sharing. Below is the structure and contents of the repository:

  - `book/`: Contains all the Markdown files for each chapter of the **Essential Guide to Pandas**. These files compile into the complete guide.
  - `notebooks/`: Houses a Jupyter notebook which includes all the code and analysis presented in the book.
    - `essential-guide-to-pandas.ipynb`: This Jupyter notebook contains the practical implementations and code examples used throughout the book.
  - `notes/`: This folder includes various notes that could be useful for further expansions or annotations to the book content.
  - `templates/`: A directory containing the LaTeX template used for formatting the PDF output of the book.
    - `egtp-template.tex`: The LaTeX template file that defines the layout and style of the final document.
    - `figures/`: Stores any figures or images referenced in the book, used within the LaTeX compiled document.
  - `book.info`: Contains metadata about the book, such as the author, title, and publication date, which are included in the final PDF to provide detailed bibliographic references.
  - `LICENSE.md`: Describes the license under which the book and the repository content are distributed, clarifying how the content can be used or modified.
  - `makefile`: A script used for automating the compilation of the Markdown files into a single PDF document. It utilizes tools like Pandoc and LaTeX, referenced in the `templates/` directory.
  - `README.md`: Provides an overview of the project, instructions for compiling the book, the structure of the repository, and other necessary information for users and contributors.

## Book Structure

The **Essential Guide to Pandas** is structured to provide a comprehensive introduction to the powerful Pandas library for data analysis in Python. Here is a brief overview of the chapters:

  1. **Data Loading**: Learn how to import data from various formats including CSV, Excel, and SQL databases to start your data analysis projects.
  2. **Basic Data Inspection**: Understand the structure and content of your data using basic inspection techniques such as viewing top rows, data types, and summary statistics.
  3. **Data Cleaning**: Tackle inconsistencies, missing values, and anomalies in your dataset to ensure data quality and reliability.
  4. **Data Transformation**: Explore methods to reshape, aggregate, and modify data to better suit your analytical needs.
  5. **Data Visualization Integration**: Integrate Pandas with libraries like Matplotlib to create insightful visualizations such as histograms, scatter plots, and bar charts.
  6. **Statistical Analysis**: Perform statistical analysis to understand correlations, distributions, and other statistical properties of your data.
  7. **Indexing and Selection**: Master techniques for selecting specific columns, rows, or segments of data using both position and label-based indexing.
  8. **Data Formatting and Conversion**: Convert data types and manipulate textual data within your DataFrame to prepare for analysis.
  9. **Advanced Data Transformation**: Delve into more complex transformations like applying lambda functions, melting data, and stacking/unstacking DataFrames.
  10. **Handling Time Series Data**: Manipulate time-stamped data using techniques like setting datetime indices, resampling, and rolling window operations.
  11. **File Export**: Learn to export your data to CSV, Excel, and SQL databases, ensuring your analyses can be shared and reproduced.
  12. **Advanced Data Queries**: Use advanced querying techniques like the query function and the `isin` method to extract specific insights from your data.
  13. **Multi-Index Operations**: Manage high-dimensional data more effectively with multi-level indexing, including creating and slicing through MultiIndexes.
  14. **Data Merging Techniques**: Apply SQL-like joins and other merging techniques to combine multiple datasets into a single DataFrame.
  15. **Dealing with Duplicates**: Identify and remove duplicate entries to clean and refine your dataset, ensuring the integrity of your analysis.
  16. **Custom Operations with Apply**: Extend the capabilities of Pandas by applying custom functions to DataFrames, allowing for bespoke transformations and analyses.
  17. **Integration with Matplotlib for Custom Plots**: Enhance your data visualizations with custom plots that leverage the full power of Matplotlib integrated with Pandas.
  18. **Advanced Grouping and Aggregation**: Utilize advanced grouping and aggregation to summarize data, providing insights into complex datasets.
  19. **Text Data Specific Operations**: Manipulate and analyze textual data within DataFrames using operations designed for string data, including regular expressions.
  20. **Working with JSON and XML**: Handle modern data formats like JSON and XML with Pandas for effective data interchange and integration with web technologies.
  21. **Advanced File Handling**: Explore advanced techniques for reading and writing data with specific configurations, enhancing the flexibility and efficiency of data management.
  22. **Dealing with Missing Data**: Address and impute missing data using methods such as interpolation, forward fill, and backward fill to maintain the quality of your analysis.
  23. **Data Reshaping**: Transform the structure of your DataFrame between wide and long formats to adapt your data for different analytical purposes.
  24. **Categorical Data Operations**: Efficiently manage and analyze categorical data, setting categories and ordering them appropriately for analysis.
  25. **Advanced Indexing**: Explore advanced indexing techniques that allow for more nuanced manipulation and retrieval of data within your DataFrames.
  26. **Efficient Computations**: Enhance performance through efficient computations using Pandas' capabilities like `eval()` and `query()` for faster data operations.
  27. **Advanced Data Merging**: Delve deeper into sophisticated data merging techniques for complex data manipulation tasks.
  28. **Data Quality Checks**: Implement strategies to ensure and maintain the quality of your data throughout the analysis process using tools like assertions.
  29. **Real-World Case Studies**: Apply the concepts and techniques learned throughout the manual to real-world scenarios using the Titanic dataset. This chapter demonstrates practical data analysis workflows, including data cleaning, exploratory analysis, and survival analysis, providing insights into how to utilize Pandas in practical applications to derive meaningful conclusions from complex data sets.

Each chapter focuses on different aspects of using Pandas, from basic data handling to advanced data manipulation techniques.

## How to Compile the Guide

To compile the Markdown files into a PDF, ensure you have [Pandoc](https://pandoc.org/), LaTeX, and [pdftk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) installed on your system. These tools are necessary for processing and compiling the Markdown into a final PDF document.

You can then run the following command from the root directory of this repository:

```bash
make -f makefile generatebook
```

This command uses [Pandoc](https://pandoc.org/) with a custom [Eisvogel LaTeX](https://github.com/Wandmalfarbe/pandoc-latex-template) template and [pdftk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) to merge and generate a professional-looking PDF document. [pdftk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) is used to handle final document assembly tasks such as merging individual chapter PDFs into a single file.

## Additional Resources

For further reading and learning, the following resources are recommended:

  - **Pandas Documentation**: [Official documentation](https://pandas.pydata.org/pandas-docs/stable/) provides comprehensive guides and tutorials.
  - **Python for Data Analysis by Wes McKinney**: Essential reading for in-depth understanding of data analysis using Pandas. Available online: [Python for Data Analysis](https://wesmckinney.com/book/).
  - **Python Data Science Handbook by Jake VanderPlas**: Offers an in-depth exploration of how to use Python tools including Pandas for data science. Available online: [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/).
  - **Stack Overflow**: Great place for getting answers to common (and uncommon) issues related to [Pandas](https://stackoverflow.com/questions/tagged/pandas).
  - **Real Python**: Offers tutorials and recipes related to [Pandas](https://realpython.com/search?q=pandas) for beginners and advanced users.

These resources are excellent for supplementing the information covered in this manual.

## Contributing

Contributions to improve the manual are welcome. Please follow these steps to contribute:

  1. :mailbox: **Open an Issue**: Start by opening an issue in this GitHub repository. Describe the contribution you want to make, whether it's adding a new book, improving an existing one, or providing additional study resources.

  2. :fork_and_knife: **Fork and Edit**: Fork this repository, make your changes, and then submit a pull request with your contributions. <a href="https://github.com/imarranz/essential-guide-to-pandas/pulls"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?longCache=true" alt="Pull Requests"></a>

  3. :mag: **Review**: I will review your submission, and if everything is in order, your contributions will be merged into the project.

  4. :trophy: **Credit**: All contributors will be duly credited for their work. We believe in recognizing the efforts of the community members.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.

## Contact

For more information, suggestions, or questions, you can contact me via
<p align="center">
<a href="https://www.linkedin.com/in/ibon-mart%C3%ADnez-arranz/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a>&nbsp;
<a href="https://github.com/imarranz/"><img src="https://img.shields.io/badge/GitHub-FFFFFF.svg?&style=for-the-badge&logo=Github&logoColor=black" alt="GitHub"></a>&nbsp;
<a href="https://twitter.com/imarranz/"><img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white" alt="X"></a>
</p>
