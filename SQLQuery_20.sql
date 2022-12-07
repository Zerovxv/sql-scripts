With CAvendors as 
( Select *
 from Vendors
 where Vendorstate in ('CA','OH')
)
select * 
from Invoices
join CAvendors
on Invoices.VendorID = CAvendors.vendorID