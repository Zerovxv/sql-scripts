select VendorName, count(*) Invoicecount, sum(invoicetotal) invoicesum
from vendors v
join invoices i
on v.vendorid = i.Vendorid
group by v.vendorid, Vendorname
order by Invoicecount desc
