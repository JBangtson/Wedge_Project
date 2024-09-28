
# Applied Data Analytics

## Wedge Project

The meaning of this file is to summarize the Wedge Project and to check for accuracy in the ETL process. The first section of the project was extracting the data from zip files and creating metadata for exploration. The second section of the project consisted of creating data cleaning functions specific to the project, and transforming and loading the data into GBQ. In the third section, text files were created from GBQ owner-specific queries. In the final section, data was downloaded from GBQ using queries, then the data was loaded into a SQL db. 

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
| Total Rows  |  85,760,124 |   |   |   |
| January 2012 Rows  |  1,070,907 |   |   |   |
| October 2012 Rows  | 1,029,592  |   |   |   |
| Month with Fewest  |  February (2) |   | Yes/No  | NA  |
| Num Rows in Month with Fewest  |  6,556,769 |   |   |   |
| Month with Most  | May  |   | Yes/No  | NA  |
| Num Rows in Month with Most  |  7,5787,371 |   |   |   |
| Null_TS  | 485,472  |   |   |   |
| Null_DT  | 0  |   |   |   |
| Null_Local  |  234839 |   |   |   |
| Null_CN  | 0  |   |   |   |
| Num 5 on High Volume Cards  |  14987 |   | Yes/No  | NA  |
|  Num Rows for Number 5 | 460,625  |   |   |   |
| Num Rows for 18736  |  12,153 |   |   |   |
| Product with Most Rows  | Banana Organic  |   | Yes/No  | NA  |
| Num Rows for that Product  |  908,637 |   |   |   |
| Product with Fourth-Most Rows  |  Avocado Hass Organic |   | Yes/No  | NA  |
| Num Rows for that Product  |  456,771 |   |   |   |
| Num Single Record Products  |  2,741 |   |   |   |
| Year with Highest Portion of Owner Rows  | 2014  |   | Yes/No  | NA |
| Fraction of Rows from Owners in that Year  | 75.91%  |   |   |   |
| Year with Lowest Portion of Owner Rows  |  2011 |   | Yes/No  | NA |
| Fraction of Rows from Owners in that Year  |  73.72% |   |   |   |

## Reflections

Overall, The Wedge Project was exciting in working with __my__ first cloud database. The experience gave me confidence in my ability to do the ETL process. 

The process was messy. Some files were already clean, while others had no column names, Strings in columns with Float datatypes, or delimited with a semi-colon instead of commas, etc. 

I wanted to do each task in its loop. For example, I tried to clean and upload all the data to GBQ in a single loop (I hope it is fully automatic by the time this is due, as I wanted). But, sometimes, I would have a chunk of code running for 15 minutes for it to crash, and instead of tweaking the loop to start where it left off, it was easier to make a 'manual' section where I would manually select the file, then clean, and upload. Slowing down saved some money, but I lost time. 

After completing the tasks, I had a lot of messy code to clean up, and I found errors in cleaning, which created more mess. I am confident my errors are trivial, if there are any, but I'm still cleaning up and commenting on messy code.
