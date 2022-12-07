Create or Alter Procedure InvoicesForVendor
 @VendorName varchar(30) = '%'
as 

Select VendorName, i.*
from Vendors v 
Join Invoices I
on v.vendorid = i.VendorID
where VendorName like @VendorName
Order by VendorName;
GO

exec InvoicesForVendor @VendorName = '%PR%';