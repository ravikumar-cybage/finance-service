CREATE TABLE [dbo].[MonthlySalary] (
    [Id]             INT  NOT NULL IDENTITY,
    [EmployeeId]     INT  NOT NULL,
    [TotalTax]       INT  NOT NULL,
    [TotalDeduction] INT  NOT NULL,
    [TotalTakeHome]  INT  NOT NULL,
    [TotalEarning]   INT  NOT NULL,
    [month]          DATE NOT NULL,
    CONSTRAINT [PK_MonthlySalary] PRIMARY KEY CLUSTERED ([Id] ASC)
);



