## Cyclistic Bike-Share Case Study  
**Google Data Analytics Capstone Project**

### Business Task
Analyze Cyclistic’s historical trip data to determine how annual members and casual riders use bikes differently in order to inform marketing strategies aimed at increasing annual memberships.

---

### Stakeholders
- Director of Marketing
- Marketing Analytics Team
- Executive Leadership Team

Insights from this analysis will support marketing strategy decisions aimed at increasing annual memberships.

---

### Data Source

The dataset used for this analysis is the Cyclistic (Divvy) historical bike trip dataset made publicly available by Motivate International Inc.

This project analyzes the most recent 12 complete months of trip data to capture full seasonal usage patterns.

Due to file size limitations, raw CSV files are stored locally and imported into Google BigQuery for analysis. Raw data is not stored in this repository.

---

### Data Credibility (ROCCC)

- **Reliable:** Data provided by Motivate International Inc., the operator of the Cyclistic/Divvy bike-share program.
- **Original:** Primary trip-level data collected directly from bike-share operations.
- **Comprehensive:** Includes ride timestamps, station information, bike type, and rider membership status.
- **Current:** Analysis uses the most recent 12 complete months of data.
- **Cited:** Publicly available dataset with licensing provided by the source.

---

### Tools Used
- SQL (Google BigQuery)
- Tableau
- GitHub (Project Documentation)

---

### Project Structure
- /data → Raw and cleaned datasets
- /sql → SQL queries for cleaning and analysis
- /tableau → Final dashboard visuals
- /documentation → Detailed cleaning and transformation steps

---

### Analysis Roadmap
This project follows the six-step data analysis process:

1. Ask  
2. Prepare  
3. Process  
4. Analyze  
5. Share  
6. Act  

---

## Key Findings

### 1. Ride Duration Differences
Casual riders take significantly longer trips than annual members.
- Casual avg ride length: ~19 minutes
- Member avg ride length: ~12 minutes

This suggests casual riders primarily use bikes for leisure, while members use them for transportation.

### 2. Weekday vs Weekend Behavior
- Casual riders peak on weekends.
- Members ride more frequently on weekdays.

This indicates commuter behavior among members and recreational behavior among casual riders.

### 3. Seasonality
Casual ridership spikes dramatically in late spring and summer.
Members ride more consistently throughout the year.

This suggests the strongest opportunity for membership conversion occurs during peak summer months.

---

## Recommendations

1. Launch targeted summer membership promotions for active casual riders.
2. Introduce a lower-cost weekend membership option.
3. Use behavioral triggers in the app to show casual riders potential cost savings from upgrading.

---

### Project Status
In Progress
