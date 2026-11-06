Project Overview:
This project transforms a raw Excel sales dataset into a financial performance matrix layout using Power BI Desktop. Because this was built using a local development environment, the raw model file and data are included in this repository for full evaluation.

How to Review This Project:
1. Quick Preview: Review the textual breakdown of the 11 slides below to understand the insights.
2. Inspect the Data Model: Download the raw analysis.sql file to open and audit the queries locally.

Strategic Regional Presentation By Slide:

Slide 1: Core System Schema
I created the primary staging schema tables to store geographical, legislative, and population metrics cleanly.

Slide 2: High-Level Country Performance
I tracked high-level gross metrics across the entire database, including total population, land area, and House seats.

Slide 3: Cross-Regional Performance Matrix
I built a high-density breakdown grid showing populations, capitals, and legislative weights sorted by regional size.

Slide 4: Population Share Percentages
I calculated the exact percentage share of the country population that each state holds, identifying major regional hubs.

Slide 5: Official State Deep-Dive
I filtered down dataset views exclusively to official active states with recognized local governors.

Slide 6: Regional Population Density Rankings
I sorted and mapped regions by population density to locate the country most heavily crowded urban zones.

Slide 7: Land Size Area Distribution Mix
I measured the exact share of land size each territory claims, helping map out massive, sparsely populated research zones.

Slide 8: House Representation Weight Mix
I analyzed legislative representation by calculating exactly how many citizens are backed per individual House seat.

Slide 9: Average Metrics Across Active Regions
I produced overall standard country baselines for regional populations, land size, and seat distributions.

Slide 10: Low-Population Territories
I isolated small or developing offshore islands with under 10,000 residents to evaluate tracking dependencies.

Slide 11: Summary of Unpopulated Research Zones
I filtered and flagged unique zones that hold 0 residents or are managed under external offshore anchorage rules.

Project Repository Files:
-- analysis.sql: Clean, readable SQL script covering all 11 slides of data analysis totals.
