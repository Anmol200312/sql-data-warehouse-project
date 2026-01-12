# 🏢 Data Warehouse and Analytics Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Data Warehouse](https://img.shields.io/badge/Data%20Warehouse-4CAF50?style=for-the-badge)
![ETL](https://img.shields.io/badge/ETL%20Pipelines-2196F3?style=for-the-badge)
![Star Schema](https://img.shields.io/badge/Star%20Schema-FF9800?style=for-the-badge)
![SQL](https://img.shields.io/badge/Advanced%20SQL-00758F?style=for-the-badge&logo=postgresql&logoColor=white)
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

## 🎯 Skills & Technologies Demonstrated (ATS Optimized)

- SQL Server
- Advanced SQL
- ETL Pipelines
- Data Warehousing
- Medallion Architecture
- Dimensional Modeling
- Star Schema
- Data Cleansing & Transformation
- Analytical SQL Queries
- BI & Reporting Foundations

---

## 🛠️ Tools & Resources (100% Free)

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

📄 Detailed requirements available in:  
`docs/requirements.md`

---

## 📂 Repository Structure

