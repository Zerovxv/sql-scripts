Select VendorId, InvoiceNumber, Invoicetotal
    from Invoices as Inv_Main
        where Invoicetotal > 
(Select avg(Invoicetotal)
    from Invoices as Inv_Sub 
    where Inv_Sub.VendorID = Inv_Main.VendorID) 
        order by VendorID