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
