select TOP 10 vendorname, sum(paymenttotal) as Paymentsum
from invoices i
join vendors v
on  i.vendorid = v.vendorid 
group by vendorname 
order by sum(paymenttotal) desc

