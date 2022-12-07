Select InvoiceNumber, InvoiceDate, InvoiceTotal,
    InvoiceTotal - PaymentTotal - Credittotal as BalanceDue
    from Invoices
         Where Invoicetotal - Paymenttotal - Credittotal > 0
         and Invoicetotal - paymenttotal - Credittotal <
 (Select avg(Invoicetotal - paymenttotal - Credittotal) 
     from Invoices 
         Where Invoicetotal - paymenttotal - Credittotal > 0)
             Order by Invoicetotal Desc