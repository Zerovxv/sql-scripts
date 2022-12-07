select InvoiceNumber, InvoiceDate, Invoicetotal
from Invoices
where Invoicetotal > (
    select avg(Invoicetotal)
    from Invoices 
)
order by InvoiceTotal;