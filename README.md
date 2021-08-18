# Impact-Analysis-of-Transportation-in-Chicago
# Scripts:

Taxi Data Set_2018
Taxi Data Set_2019
Taxi Data Set_2020
Divvy Data Set
E-Scooter Data Set
Clean&Extract.R
Create_DB.sql
scooter_project_CommunityArea.sql
scooter_project_Divvy_Ridership.sql
scooter_project_Divvy_Station.sql
scooter_project_Final.sql
scooter_project_L_Ridership.sql
scooter_project_Scooter_Ridership.sql
scooter_project_Taxi_Ridership.sql

# Tableau:
E-Scooter.twbx
Divvy-Ridership.twbx

# Steps:  
Execute the following code files:

Taxi Data Set 2018: It collects the data of Taxi Data Set 2018 from the API of City of Chicago(https://data.cityofchicago.org). Store it as a dataframe in Python. Calculate the number of rows and columns. Obtain the information of the dataframe using “.info()”. Using “isnull().sum()”, we calculate the number of null values in each column. Then we calculate the total and percentage of missing values. Then we drop the NA values using “dropna()”. We finally drop the unnecessary columns from the data frame.

Taxi Data Set 2019: It collects the data of Taxi Data Set 2019 from the API of City of Chicago(https://data.cityofchicago.org). Store it as a dataframe in Python. Calculate the number of rows and columns. Obtain the information of the dataframe using “.info()”. Using “isnull().sum()”, we calculate the number of null values in each column. Then we calculate the total and percentage of missing values. Then we drop the NA values using “dropna()”. We finally drop the unnecessary columns from the data frame.

Taxi Data Set 2020: It collects the data of Taxi Data Set 2020 from the API of City of Chicago(https://data.cityofchicago.org). Store it as a dataframe in Python. Calculate the number of rows and columns. Obtain the information of the dataframe using “.info()”. Using “isnull().sum()”, we calculate the number of null values in each column. Then we calculate the total and percentage of missing values. Then we drop the NA values using “dropna()”. We finally drop the unnecessary columns from the data frame.

Finally we combine the Taxi Data Set 2018,2019 and 2020 as one dataframe and export it as a csv. 

Divvy Data Set: This script takes the downloaded Divvy_Trips csv Dataset from the City of Chicago (https://data.cityofchicago.org) and is responsible for cleaning this dataset for our analysis. We take this data and create it in a dataframe before counting rows/columns and viewing the entire dataset using .info(). We then use .drop to drop the unnecessary  columns, significantly decreasing its size. The script then takes the dataframe, converts the start time to DateTime type using  pd.to_datetime. We then selected only the data after 01-01-2018 by calling the [‘Start Time’] column and selecting > 01-01-2018. We tried to use python to add a new column but due to an error encountered, we pulled this into SQL to create a new column for cost, which was based on the pricing of Divvy bikes, being $3 for the first 30 minutes and 0.20/minute.	

E-Scooter Data Set:  This script is from the csv named E-scooter data set retrieved from the website the City of Chicago(https://data.cityofchicago.org). After downloading the file, extract it only between the date from  June 15, 2019 and  October 15 2019. After uploading it, run the python to do the exploratory data analysis. Afterwards, drop some useless data columns and add two valuable columns for Trip cost and Trip mile. The clean data set is the saved ad ‘E-scooter.csv’.

L-Ridership Scraping: Run the SQL Clean&Extract.R. This calls to the city of Chicago website to extract and clean the L-Ridership data. The script also filter to the needed date set and drops the non-essential columns. The clean data set is then saved as ‘Lridership.csv’


SQL:

Populate Database: Run the Create_DB.sql script to build out the database. From there the data can be imported using the data sets, or run the corresponding SQL statements to populate the table. 

Combine Datasets: From there run the Combine_Data.sql to combine the Divvy, Taxi, and Scooter data.

Tableau: Using the database e-scooter_project, create the Divvy and E-scooter dashboard in Tableau. The Divvy Dashboard uses Divvy data in addition to community area and spatial file for the city of Chicago. The E-Scooter dashboard uses E-scooter data in addition to the spatial file for the city of Chicago
