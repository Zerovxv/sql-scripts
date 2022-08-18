select 
	InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal,
	CreditTotal,
	InvoiceTotal - PaymentTotal - CreditTotal as BalanceDue
from Invoices 
Where InvoiceTotal - PaymentTotal - CreditTotal > 0 
order by InvoiceDate; 