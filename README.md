# usa-real-estate-analysis
End-to-end real estate data pipeline and Power BI dashboard (Python, PostgreSQL, Power BI).

# 📊 USA Real Estate Analytics Dashboard

An end-to-end data analytics project processing real estate transaction data from raw CSV to an interactive Power BI dashboard via PostgreSQL.

---

## 🛠️ Tech Stack & Tools
- **Data Processing (ETL):** Python (Pandas, SQLAlchemy)
- **Database Management:** PostgreSQL (pgAdmin 4)
- **Business Intelligence:** Power BI Desktop, DAX

---

## 🚀 Project Architecture & Workflow
1. **ETL Pipeline:** Extracted raw property data, cleaned headers, handled data types, and ingested data into a PostgreSQL database using Python.
2. **Database Modeling:** Designed aggregate SQL Views (`view_city_summary`, `view_property_type_summary`) to optimize dashboard loading speeds and pre-process calculations.
3. **BI Visualization:** Connected Power BI to PostgreSQL, built DAX measures for core KPIs (`Total Properties`, `Average Sale Price`), and structured an executive UI/UX design.

---

## 📈 Dashboard Key Features
- **Executive KPIs:** Quick overview of analyzed cities, average sale prices, and total available properties.
- **Top 10 Cities Analysis:** Breakdown of highest-value real estate markets.
- **Property Type Distribution:** Dynamic breakdown of transaction share across residential types.
- **Interactivity:** Custom slicers for dynamic real-time filtering.

---

<img width="1783" height="746" alt="Screenshot 2026-09-19 171006" src="https://github.com/user-attachments/assets/75a1f93c-2460-4fec-a805-dbcad144eadf" />


## 📂 Repository Structure

* **`powerbi/`** - Power BI `.pbix` dashboard file
* **`scripts/`** - Python ETL extraction and load scripts
* **`sql/`** - PostgreSQL views and analytical queries
* **`README.md`** - Project documentation
