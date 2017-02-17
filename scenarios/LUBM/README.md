# Contents of this folder

Subfolder *schema*: Contains the table definitions (file schema.sql) and the schema dependencies as tuple-generating-dependencies (file dependencies.txt). Note that in the latter file, we assume prefix variables by '?'. 

Subfolder *100%*: Contains the 14 queries of the LUBM benchmark. Statistics are available for each base table.

Subfolder *50%*: Contains the 14 queries of the LUBM benchmark. In this test scenario we want to realise cases where statistics are available only for a subset of the tables mentioned in the queries. We assume that tables prefixed by @ in the query body have no available statistics. 

# Instructions to install the schema and data for the LUBM test scenarios in SQL Server and DB2 

Instructions to install the schema and data for the IMDB test scenario in SQL Server and DB2

We got the LUBM ontology generator from http://swat.cse.lehigh.edu/projects/lubm/ and ran it with parameter 1K. We later converted the data of the ontology in relational format and extracted its dependencies.  