CREATE DATABASE ev_charging_db;
USE ev_charging_db;

CREATE TABLE ev_stations (
    Station_Name VARCHAR(255),
    Street_Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZIP VARCHAR(20),
    Latitude FLOAT,
    Longitude FLOAT,
    EV_Level1_Num INT,
    EV_Level2_Num INT,
    EV_DC_Fast_Count INT,
    EV_Connector_Types VARCHAR(255),
    EV_Network VARCHAR(255),
    EV_Pricing VARCHAR(255),
    Open_Date DATE,
    Access_Days_Time VARCHAR(255),
    Groups_With_Access_Code VARCHAR(255),
    Status_Code VARCHAR(50),
    Total_Chargers INT,
    Open_Year INT,
    Station_Age_Years FLOAT,
    Predicted_Chargers FLOAT,
    Charger_Gap FLOAT
);
SHOW DATABASES;
USE ev_charging_db;
SHOW TABLES;
SELECT * FROM ev_stations LIMIT 10;

#Query1:Total Stations by state
SELECT State, COUNT(*) AS Total_Stations
FROM ev_stations
GROUP BY State
ORDER BY Total_Stations DESC;

#Query2: Total Stations by EV Network

SELECT `EV Network`, COUNT(*) AS Total_Stations
FROM ev_stations
GROUP BY `EV Network`
ORDER BY Total_Stations DESC;


#Query3: Growth of stations over years

SELECT `Open Year`, COUNT(*) AS Stations_Opened
FROM ev_stations
GROUP BY `Open Year`
ORDER BY `Open Year`;

#Query4: Top 10 cities by charger gap

SELECT City, SUM(`Charger Gap`) AS Total_Charger_Gap
FROM ev_stations
GROUP BY City
ORDER BY Total_Charger_Gap DESC
LIMIT 10;

#Query5: Overutilized station Gap
SELECT COUNT(*) AS Overutilized_Stations
FROM ev_stations
WHERE `Charger Gap` > 2;

#Query6: Average charger gap across all stations

SELECT ROUND(AVG(`Charger Gap`), 2) AS Average_Charger_Gap
FROM ev_stations;

#Query7: State with highest average charger gap (find the most problematic states)

SELECT State, ROUND(AVG(`Charger Gap`), 2) AS Avg_Charger_Gap
FROM ev_stations
GROUP BY State
ORDER BY Avg_Charger_Gap DESC
LIMIT 1;

#Query8: Predicted Vs Actual charges

SELECT 
    SUM(`Total Chargers`) AS Total_Actual_Chargers,
    SUM(`Predicted Chargers`) AS Total_Predicted_Chargers,
    SUM(`Predicted Chargers`) - SUM(`Total Chargers`) AS Total_Charger_Gap
FROM ev_stations;

#Query9: Cluster Analysis

SELECT Cluster, COUNT(*) AS Stations_In_Cluster, ROUND(AVG(`Charger Gap`), 2) AS Avg_Charger_Gap
FROM ev_stations
GROUP BY Cluster
ORDER BY Avg_Charger_Gap DESC;