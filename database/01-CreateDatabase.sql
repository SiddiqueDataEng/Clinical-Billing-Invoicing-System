/*
 * Clinical Billing Invoicing System
 * Project #7 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, Stored Procedures
 * Created: 2011
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ClinicalBillingDB')
BEGIN
    ALTER DATABASE ClinicalBillingDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ClinicalBillingDB;
END
GO

CREATE DATABASE ClinicalBillingDB
ON PRIMARY
(
    NAME = 'ClinicalBillingDB_Data',
    FILENAME = 'C:\SQLData\ClinicalBillingDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ClinicalBillingDB_Log',
    FILENAME = 'C:\SQLData\ClinicalBillingDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ClinicalBillingDB SET RECOVERY SIMPLE;
ALTER DATABASE ClinicalBillingDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE ClinicalBillingDB;
GO

PRINT 'Database ClinicalBillingDB created successfully';
PRINT 'Project: Clinical Billing Invoicing System';
PRINT 'Description: Billing workflows integrated with patient services';
GO
