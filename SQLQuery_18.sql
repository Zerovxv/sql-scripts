select Invoicenumber, Invoicetotal
from Invoices
where paymenttotal > All 
(select top 50 percent paymenttotal
from Invoices
order by paymenttotal)