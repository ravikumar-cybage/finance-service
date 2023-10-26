CREATE TABLE [dbo].[AnnualSalary] (
    [Id]                 INT  NOT NULL IDENTITY,
    [EmployeeId]         INT  NOT NULL,
    [BasicSalary]        INT  NOT NULL,
    [HouseRentAllowance] INT  NOT NULL,
    [VariablePay]        INT  NOT NULL,
    [StartDate]          DATE NOT NULL,
    [EndDate]            DATE NOT NULL,
    [ProvidantFund]      INT  NOT NULL,
    [SpecialAllowance]   INT  NOT NULL,
    CONSTRAINT [PK_AnnualSalary] PRIMARY KEY CLUSTERED ([Id] ASC)
);



