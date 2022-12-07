select vendorname as vendor, Invoicedate, 
Invoicenumber as Number, Invoicesequence as #, InvoiceLineItemAmount as LineItem
from vendors v
join Invoices i
on v.vendorID = i.vendorID
join InvoiceLineitems l
on i.InvoiceID = l.InvoiceID
order by vendor, Invoicedate, number, #