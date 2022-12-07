select VendorName, InvoiceNumber
from Vendors v left join Invoices i
on i.vendorID = v.VendorID