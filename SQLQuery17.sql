select vendorname, accountdescription, count(*) lineitemcount, sum(invoicelineitemamount) lineitemsum
	from Vendors v
join Invoices i
	on v.vendorid = i.vendorid
join invoicelineitems l
	on i.InvoiceID = l.InvoiceID
join GLAccounts g
	on l.AccountNo = g.AccountNo
		group by vendorname, g.AccountDescription	
		order by vendorname, AccountDescription