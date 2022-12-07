select vendorname, InvoiceNumber, InvoiceDate,
Invoicetotal - (paymenttotal + credittotal) as balance
from Vendors v
join Invoices i
on v.vendorID = i.vendorID
where Invoicetotal - (paymenttotal + credittotal) > 0 
order by Vendorname asc