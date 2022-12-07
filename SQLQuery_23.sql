select InvoiceNumber, InvoiceDate, Invoicetotal
    from Invoices
    where VendorId IN (
        Select VendorID 
        from Vendors
        WHERE VendorState = 'CA'
    )



select InvoiceNumber, InvoiceDate, Invoicetotal
    from Invoices
    join Vendors
    on Invoices.VendorID = Vendors.VendorID
    where vendors.Vendorstate = 'CA'
    order by invoiceDate