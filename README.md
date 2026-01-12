# 🏢 Data Warehouse and Analytics Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Data Warehouse](https://img.shields.io/badge/Data%20Warehouse-4CAF50?style=for-the-badge)
![ETL Pipelines](https://img.shields.io/badge/ETL%20Pipelines-2196F3?style=for-the-badge)
![Star Schema](https://img.shields.io/badge/Star%20Schema-FF9800?style=for-the-badge)
![Advanced SQL](https://img.shields.io/badge/Advanced%20SQL-00758F?style=for-the-badge&logo=postgresql&logoColor=white)
![Portfolio Project](https://img.shields.io/badge/Portfolio%20Project-9C27B0?style=for-the-badge)

---

## 📌 Overview

Welcome to the **Data Warehouse and Analytics Project** 🚀  
This project demonstrates an **end-to-end modern data warehousing solution**, from raw data ingestion to analytics-ready datasets and business insights.

Designed as a **portfolio-grade project**, it follows **industry best practices** in:
- Data Engineering
- ETL Development
- Dimensional Data Modeling
- SQL-based Analytics & Reporting

This repository is ideal for showcasing skills required for **Data Engineer, Analytics Engineer, BI Developer, and Data Analyst** roles.

---

## 🏗️ Data Architecture (Medallion Architecture)

The project follows the **Medallion Architecture** pattern with **Bronze, Silver, and Gold** layers.

![Data Architecture](docs/data_architecture.png)

### 🔹 Bronze Layer (Raw Data)
- Stores raw data ingested directly from source systems
- Source format: **CSV files (ERP & CRM)**
- Loaded into **SQL Server**
- No transformations applied

### 🔹 Silver Layer (Cleaned & Standardized)
- Data cleansing and validation
- Standardization and normalization
- Business rule enforcement
- Prepared for analytical modeling

### 🔹 Gold Layer (Analytics-Ready)
- Star schema data models
- Fact and Dimension tables
- Optimized for reporting and BI tools
- Business-friendly and query-efficient

---

## 📖 Project Scope & Features

### ✔️ Data Engineering
- Designed a modern **SQL Server Data Warehouse**
- Built scalable **ETL pipelines**
- Integrated multiple source systems (ERP & CRM)
- Ensured data quality and consistency

### ✔️ Data Modeling
- Implemented **Star Schema**
- Created Fact and Dimension tables
- Optimized models for analytical queries

### ✔️ Analytics & Reporting
- Developed SQL-based analytics
- Generated insights on:
  - Customer behavior
  - Product performance
  - Sales trends

---

## 🛠️ Tools & Resources 

- **Datasets:** CSV files (ERP & CRM) → `datasets/`
- **SQL Server Express**
- **SQL Server Management Studio (SSMS)**
- **Git & GitHub**
- **Draw.io** (Architecture, ETL, Models)
- **Notion** (Project planning & documentation)
---

## 🚀 Project Requirements

### 🔧 Data Engineering Objective
Develop a modern SQL Server data warehouse that consolidates sales data from multiple source systems to support analytics and decision-making.

#### Specifications
- Import data from ERP and CRM CSV files
- Clean and validate data before analysis
- Integrate data into a unified analytical model
- Focus on latest data (no historization)
- Provide clear and structured documentation

---

### 📊 BI & Analytics Objective
Create SQL-based analytical queries to provide insights into:
- Customer behavior
- Product performance
- Sales trends

---

## 📂 Repository Structure

data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniques and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   └── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   └── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project


🚀 About Me
---
👋 Hi, I’m Anmol Singh
---
I’m a Data Engineering & Analytics enthusiast with strong hands-on experience in SQL, Data Warehousing, ETL pipelines, and analytical reporting.
I build scalable data solutions that transform raw data into business-ready insights.
