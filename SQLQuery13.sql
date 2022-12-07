select vendorid as vendor, sum(paymenttotal) as paymentsum 
from invoices
group by vendorid