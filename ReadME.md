
# ABAP Calculator

## Project Overview
A basic calculator developed using SAP ABAP.

## Features
- Addition.
- Subtraction
- Multiplication
- Division

## Concepts Practised
- DATA declaration
- PARAMETERS
- Arithmetic operations
- CASE statements
- IF-ELSE conditions
- WRITE statements

## Language
SAP ABAP

## Learning Outcome
Practised ABAP variables, selection screens,
conditional statements and arithmetic operations.

## Status
Completed - Day 01
# SAP ABAP – Performance Optimization

DAY2
##  Problem Statement

A report processes 500,000 database records and takes approximately 40 minutes to execute.

One major reason for poor performance can be executing database queries inside LOOP statements, resulting in excessive database round trips.

## 🛠️ Optimization Techniques

The following techniques are demonstrated:

### 1. Avoid SELECT Inside LOOP
- Avoid executing individual database queries for every record.
- Use JOINs or FOR ALL ENTRIES to retrieve related data in bulk.

### 2. FOR ALL ENTRIES
- Fetch related records using an internal table as the selection criteria.
- Always check whether the driving internal table is empty before execution.

### 3. BINARY SEARCH
- Sort the internal table before performing binary search.
- Reduce lookup time compared with linear searches.

### 4. Select Only Required Fields
- Avoid SELECT * when unnecessary.
- Retrieve only the columns required by the report.

### 5. Database Index Optimization
- Analyze frequently used WHERE conditions.
- Check existing indexes and query execution plans before creating additional indexes.

## 🔍 Performance Analysis Tools



## 📚 Key Concepts Learned

- Database access optimization
- Efficient internal table operations
- SQL performance analysis
- JOIN vs. FOR ALL ENTRIES
- Binary Search
- ABAP Runtime Analysis
