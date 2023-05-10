# data-project-database
data-project-database consists of 4 sql scripts with each file have its own properties when run in pg admin

# createUserAndDb.sql
createUserAndDb.sql creates a user named surendra and a database named iplproject. Makes the created user as owner of the new database

# cleanUp.sql
cleanUp.sql drops the database that was created previously and also drops the user.

# loadCsvData.sql
loadCsvData.sql creates the table named matches and deliveries. Copies the data from csv file into the created tables. Files stored in /tmp folder because server can access the files that are in /tmp folder directly.

# ipl_project.sql
ipl_project.sql contains four queries that reads data from two csv files named matches.csv and deliveries.csv.
1)First query fetches number of matches played per year of all the years in IPL.
2)Second query fetches number of matches won of all teams over all the years of IPL.
3)Third query fetches extra runs conceded per team for the year 2016.
4)Fourth query fetches the top economical bowlers for the year 2015.


