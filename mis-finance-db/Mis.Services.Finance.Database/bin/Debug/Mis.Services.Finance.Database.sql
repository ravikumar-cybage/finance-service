﻿/*
Deployment script for Mis.Services.Finance.Database

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Mis.Services.Finance.Database"
:setvar DefaultFilePrefix "Mis.Services.Finance.Database"
:setvar DefaultDataPath "C:\Users\ravkumar\AppData\Local\Microsoft\VisualStudio\SSDT\Mis.Services.Finance.Database"
:setvar DefaultLogPath "C:\Users\ravkumar\AppData\Local\Microsoft\VisualStudio\SSDT\Mis.Services.Finance.Database"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF DB_ID('Finance') IS NULL
BEGIN
    -- Create the database
    CREATE DATABASE Finance;

    PRINT 'Database created successfully.';
END
ELSE
BEGIN
    PRINT 'Database already exists. Skipping creation.';
END;
GO

GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF (SELECT COUNT(*) from [dbo].[AnnualSalary]) = 0
BEGIN
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (1,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (2,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (3,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (4,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (5,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (6,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (7,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (8,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (9,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')
	INSERT [dbo].[AnnualSalary] ([EmployeeId],[BasicSalary],[HouseRentAllowance],[ProvidantFund],[SpecialAllowance],[VariablePay],[StartDate],[EndDate]) VALUES (10,10000,5000,2000,2000,2000,'2022-01-01','2022-01-01')


END

IF (SELECT COUNT(*) from [dbo].[MonthlySalary]) = 0
BEGIN
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (1,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (2,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (3,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (4,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (5,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (6,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (7,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (8,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (9,'2022-01-01',2000,3000,6000,5000)
	INSERT [dbo].[MonthlySalary] ([EmployeeID],[Month],[TotalTax],[TotalDeduction],[TotalEarning],[TotalTakeHome]) VALUES (10,'2022-01-01',2000,3000,6000,5000)

END
GO

GO
PRINT N'Update complete.';


GO
