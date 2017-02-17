# Contents of this folder

Subfolder *schema*: Contains the table definitions and key foreign key constraints. 

Subfolder queries: Contains 14 queries from the IMDB benchmark. Each query subfolder contains the SPJ query and the additional statistics (statistical views and filtered statistics) that we collected for SQL Server and DB2 along with the base table statistics.

# Instructions to install the schema and data for the IMDB test scenario in SQL Server and DB2 

We followed a three-step procedure to install the IMDB schema and data in SQL Server and DB2. First, we installed the IMDB schema and the data in Postgres by following the instructions from "How Good Are Query Optimizers, Really?". Second, we exported both the schema definition and the tuples of each table. The data of each table is stored in '|'-delimited files. Finally, we used these files to create the schema and load the data to SQL Server and DB2. 