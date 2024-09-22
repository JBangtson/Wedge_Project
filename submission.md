
# Applied Data Analytics

## Wedge Project

<!-- Any general commentary you'd like to say about the project --> 

### Task 1

* Files for this task: 
<!--  List of file or files here  --> 


`explore_wedge.ipynb`: 
The notebook is focused on data cleaning, exploration and preparing it for smooth uploading into a database.

<!--  Repeat for each file  --> 
`to_the_cloud.ipynb`: 
 This notebook is designed to handle data extraction, transformation, and loading (ETL) tasks, specifically for loading cleaned and processed data into GBQ from local CSV files. 


### Task 2

* Files for this task: 
<!--  List of file or files here  --> 

`GBQ_owner_query.ipynb`: 
This notebook focuses on data processing and querying related to ownership data, with the ultimate goal of utilizing GBQ for storage and analysis.

<!--  Repeat for each file  --> 
	

### Task 3

* Files for this task: 
<!--  List of file or files here  --> 



`building_summary_tables.ipynb`: 
This notebook focuses on creating tables from GBQ queries and creating a local SQLite database from the data retrieved from GBQ.

<!--  Repeat for each file  --> 


## Query Comparison Results

Fill in the following table with the results from the 
queries contained in `gbq_assessment_query.sql`. You only
need to fill in relative difference on the rows where it applies. 
When calculating relative difference, use the formula 
` (your_results - john_results)/john_results)`. 



|  Query  |  Your Results  |  John's Results | Difference | Rel. Diff | 
|---|---|---|---|---|
| Total Rows  |  83,112,839 |   |   |   |
| January 2012 Rows  |  1,033,526 |   |   |   |
| October 2012 Rows  | 998,013  |   |   |   |
| Month with Fewest  |  February (2) |   | Yes/No  | NA  |
| Num Rows in Month with Fewest  |  6,022,055 |   |   |   |
| Month with Most  | May  |   | Yes/No  | NA  |
| Num Rows in Month with Most  |  7,513,559 |   |   |   |
| Null_TS  | 0  |   |   |   |
| Null_DT  | 0  |   |   |   |
| Null_Local  |  225204 |   |   |   |
| Null_CN  | 102  |   |   |   |
| Num 5 on High Volume Cards  |  14987 |   | Yes/No  | NA  |
|  Num Rows for Number 5 | 448,508  |   |   |   |
| Num Rows for 18736  |  12,072 |   |   |   |
| Product with Most Rows  | Banana Organic  |   | Yes/No  | NA  |
| Num Rows for that Product  |  881,188 |   |   |   |
| Product with Fourth-Most Rows  |  Avocado Hass Organic |   | Yes/No  | NA  |
| Num Rows for that Product  |  437,719 |   |   |   |
| Num Single Record Products  |  6,821 |   |   |   |
| Year with Highest Portion of Owner Rows  | 2014  |   | Yes/No  | NA |
| Fraction of Rows from Owners in that Year  | 75.81%  |   |   |   |
| Year with Lowest Portion of Owner Rows  |  2012 |   | Yes/No  | NA |
| Fraction of Rows from Owners in that Year  |  73.36% |   |   |   |

## Reflections

<!-- I'd love to get 100-200 words on your experience doing the Wedge Project --> 
