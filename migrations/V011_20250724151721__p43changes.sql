-- V2__add_email_column.sql
-- Migration to add email column to employee table

ALTER TABLE dbo.Employee
ADD Email NVARCHAR(100);
GO
