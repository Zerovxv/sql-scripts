select Sum(InvoiceTotal) as total,
	count(*) as Count,
	avg(invoicetotal) as average,
	min(invoicetotal) as Min,
	Max(invoicetotal) as Max
from Invoices
