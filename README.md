# EV-Charging-Optimization
End-to-end data analytics project using Python, SQL, and Power BI to optimize EV station utilization and expansion planning.

## 🎯 Objective

To analyze real-world EV station data, identify usage imbalances, predict future charger requirements using machine learning, and recommend expansion strategies based on geospatial and network insights.  The project supports renewable energy adoption and smart city planning through data-driven decisions.



## 🔍 Key Insights

- 🚧 **1,666 stations** were overutilized (Charger Gap > 2), indicating expansion priority.
- 📈 EV station growth peaked in **2019**, showing fast adoption and infrastructure scale-up.
- 🧠 **Random Forest model** predicted future charger needs with **R² = 0.82**, **RMSE ≈ 2.5**.
- 🏙️ **Vacaville**, **Palo Alto**, and **Miami** showed the highest charger shortage.
- 🔌 **Non-Networked**, **ChargePoint**, and **Tesla Destination** were top EV networks.
- 🧭 Cluster analysis grouped stations by utilization patterns for targeted planning.



## 🧰 Tools & Technologies

 **Python**: Pandas, GeoPandas, Scikit-learn, Folium  
- 🧮 **SQL**: MySQL Workbench  
- 📊 **Power BI**: Dashboard creation and insights visualization  
- 🌐 **GitHub**: Version control and project documentation


## 📊 Power BI Dashboard Highlights

- ✅ **KPI Cards**: 43K stations, 1,666 overutilized, average gap = 0.11
- 🗺️ **Map**: Clustered charger utilization by location
- 🏙️ **Bar Chart**: Top 10 cities with highest charger gaps
- 🔌 **Donut Chart**: Market share of EV networks
- 📄 **Table View**: Predicted vs actual charger counts


## 🧠 SQL Analysis Summary

Used SQL to extract and analyze the following:

- 📍 Overutilized station count
- 🏙️ Top cities with charger shortages
- 🧮 Year-by-year station growth
- 🔌 EV Network distribution
- 🔁 Actual vs Predicted charger totals




## 🚀 How to Use This Project

1. Clone this repository or download as ZIP
2. Open the Python notebook in `/notebooks/` to run data cleaning, EDA, and ML modeling
3. Load `ev_final_clean.csv` into MySQL → run queries from `/sql_queries/`
4. Open the Power BI dashboard from `/dashboard/EV_Dashboard.pdf`

---

## 🔮 Future Enhancements

- Integrate live data using APIs from Open Charge or other EV sources
- Deploy the dashboard as a Streamlit web app or on Power BI Cloud
- Use XGBoost or Time-Series forecasting for improved demand prediction

---

## 👤 Author

**Rajuva**  
📧 rajuvarasheed1843@gmail.com    
📅 Project Date: April 2025
