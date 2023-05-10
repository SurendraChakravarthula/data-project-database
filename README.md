# data-project-database
data-project-database consists of 4 sql scripts with each file have its own properties when run in pg admin

# createUserAndDb.sql
createUserAndDb.sql creates a user named surendra and a database named iplproject. Makes the created user as owner of the new database

# cleanUp.sql
cleanUp.sql drops the database that was created previously and also drops the user.

# loadCsvData.sql
loadCsvData.sql creates the table named matches and copies the data from csv file into the created table. File stored in /tmp folder because server can access the files that are in /tmp folder.


