select 'vendorstate' vendor, sum(invoicetotal) balance
from invoices i 
join vendors v
on v.vendorid = i.vendorid
 --where invoicetotal > 200000
 group by vendorstate
 having sum(invoicetotal) > 20000
order by vendorstate