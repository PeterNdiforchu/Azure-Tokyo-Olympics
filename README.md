# Azure-Tokyo-Olympics

## Overview

This project leverages the Azure data ecosystem to extract, transform, and load data for analysis. The Azure stack components used include Azure Data Factory for extraction, Azure Blob Storage for storing extracted data, Azure Databricks for transforming data, and Azure Data Lake Gen2 for loading transformed data. The analysis is conducted using Microsoft Azure Synapse Analytics, and the results are presented through SQL queries.

## Table of Contents

- [Data Model](#data-model)
- [Business Questions](#business-questions)
- [SQL Queries](#sql-queries)
- [Azure Stack Components](#azure-stack-components)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Data Model

The data model consists of five tables:

1. **Athletes**
   - PersonName (String)
   - Country (String)
   - Discipline (String)

2. **Coaches**
   - Name (String)
   - Country (String)
   - Discipline (String)
   - Event (String)

3. **Entries Gender**
   - Discipline (String)
   - Female (Integer)
   - Male (Integer)
   - Total (Integer)

4. **Medals**
   - Rank (Integer)
   - Team_Country (String)
   - Gold (Integer)
   - Silver (Integer)
   - Bronze (Integer)
   - Rank_by_Total (Integer)

5. **Teams**
   - TeamName (String)
   - Discipline (String)
   - Country (String)
   - Event (String)

## Business Questions

1. Total Number of Athletes by Country
2. Top Coaches by Event Participation
3. Gender Distribution in Each Discipline
4. Medal Count by Team
5. Ranking of Teams by Total Medals
6. Disciplines Represented by Teams
7. Athletes without Coaches
8. Events with No Medals
9. Average Medals per Country
10. Teams with Female Athletes Only

## SQL Queries

For each business question, corresponding SQL queries have been formulated. These queries can be found in the [SQL Queries](https://github.com/PeterNdiforchu/Azure-Tokyo-Olympics/blob/b9091e850f08652c3c0a21c1f5532ae78017c16f/Business%20Questions%20Tokyo%20Olympics.sql) directory.

## Azure Stack Components

- **Azure Data Factory:** Used for extracting data.
- **Azure Blob Storage:** Stores the extracted data.
- **Azure Databricks:** Transforms the data.
- **Azure Data Lake Gen2:** Loads the transformed data.
- **Azure Synapse Analytics:** Conducts the analysis using SQL queries.

## Screenshots

Screenshots displaying the results of the SQL queries can be found in the [Screenshots](./screenshots) directory.

## Getting Started

To replicate the analysis and visualize the results:

1. Set up the Azure stack components.
2. Execute the SQL queries in Azure Synapse Analytics.
3. View the results in the provided screenshots.

## Contributing

Contributions are welcome! Please follow our [contribution guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).
