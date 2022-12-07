select Invoicenumber, Invoicetotal
from Invoices
where paymenttotal >
(select avg(PaymentTotal)
from Invoices
where Invoicetotal- (paymenttotal + credittotal) = 0 )
order by invoicetotal

-- how to creat a cluse where you are trying to find out the balance still due on and invoi