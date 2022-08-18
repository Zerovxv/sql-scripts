select InvoiceNumber as Number,
invoicetotal as Total, 
sum(PaymentTotat + Credittotal) as credit 
sum(invoicetotal - (paymenttotal + credittotal)) as Balance
From Invoices 
