[![Faker](https://img.shields.io/badge/Faker-Data%20Generator-orange)](https://faker.readthedocs.io/en/master/)

# Data Warehouse creation ETL Pipeline

This project aims to create an entire functional ETL Pipeline for building a Data Warehouse system to be used for data analysis and reporting. It begins from orchestrating a workflow using Apache Airflow, includes schema generation for various database engines, data ingestion using generated dummy data, and loading data into a centralized Microsoft SQL Server Data Warehouse.

Initially, the focus was only on Microsoft SQL Server, but the project has been expanded to support additional DBMS, including MySQL, PostgreSQL, Oracle XE, and SQLite. The architecture is containerized using Docker and Docker Compose, facilitating easy deployment and scalability. Future stages will extend into data quality assurance and business intelligence.

## Index
- [Content Overview](#content-overview)

## Content Overview

### 1. `dags/`

Airflow DAG definitions used for orchestrating the ETL process. Each DAG corresponds to a pipeline stage (schema generation, ingestion, warehouse creation).

### 2. `documentation/`

Contains project documentation, diagrams, and original files for context.

#### 3. `dataGenerator.py`

Generates dummy data using the `Faker` library tailored for each schema/table.

## Installation

1. Clone the repository:

    ```bash
    git clone -b master git@github.com:MDavidHernandezP/DataWarehousePipelineETL.git
    cd "the project directory"
    ```
    
    OR:

    ```bash
    git clone https://github.com/MDavidHernandezP/DataWarehousePipelineETL.git
    cd "the project directory"
    ```

2. Build and run the Docker containers:

    ```bash
    docker-compose up --build
    ```

## Usage

Once the containers are up and running:

1. Access the Airflow web interface at [http://localhost:8080](http://localhost:8080).
2. Log in using the default credentials:
    - `Username`: airflow
    - `Password`: airflow
3. Trigger the DAGs in the following order to initiate the ETL processes:
    - `dag_1_schema_generator`: Creates schemas in source DBs.
    - `dag_2_data_ingestor`: Generates and inserts dummy data.
    - `dag_3_warehouse_creator`: Creates and loads the Data Warehouse.
4. Monitor DAG progress and check logs of each task within the Airflow interface to ensure the ETL process completes without errors and that data is loaded correctly into the Data Warehouse.
5. Verify the data in the respective databases using appropriate database clients or tools. You can use SQL Server Management Studio (SSMS) or database clients for MySQL, PostgreSQL, etc., to connect to the database instances running in the Docker containers (refer to the `docker-compose.yml` file for ports and credentials).

NOTE: In the future, add more images of the Airflow web interface maybe.

## Contributions

Any contribution is accepted for this project we align with the MIT License for open source. If you are interested in contributing directly with us or just copy our code for an own project, you're completly free to do it. You can contact us by this email in case of doubts or contributions: `mdavidhernandezp@gmail.com`.

- **Steps for contributing:**
1. Fork the project.
2. Create a branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -am 'adding new feature'`).
4. Push the branch (`git push origin feature/new-feature`).
5. Open a pull request.

## Credits

This project was originally created by a group team of Data Engineering Students for the subject Data Preprocessing.

1. MARIO DAVID HERNÁNDEZ PANTOJA
2. LUIS ARTURO MICHEL PEREZ
3. GERARDO HERNÁNDEZ WIDMAN
4. OSCAR MARTINEZ ESTEVEZ
5. MOISES JESUS CARRILLO ALONZO

Then it was reinvented for its improvement and is being maintained by:

1. MARIO DAVID HERNÁNDEZ PANTOJA

## License

This project is licensed under the MIT License

MIT License

Copyright (c) 2024 Mario David Hernández Pantoja

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---