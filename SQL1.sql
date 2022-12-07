create or Alter Procedure InvoicesByDateRange 
    @minDate varchar(30) = Null,
    @MaxDate varchar(30) = NULL

AS 
    Declare @MinInvoiceDate varchar(20) = '01/01/1900';

 IF @MinDate is null
    Set @MinDate = @MinInvoiceDate;
 If @MaxDate is null 
    Set @MaxDate = Getdate();
Select * 
    From Invoices
    Where InvoiceDate between @MinDate and @MaxDate 
    order by InvoiceDate;

    Go

    Execute InvoicesbyDateRange @MinDate ='1/1/2019', @MaxDate = '12/31/2019'