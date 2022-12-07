select 'A'CATEGORY, *
 from Invoices 
 where Invoicetotal >= 10000
 Union
 select 'B'CATEGORY, *
 from Invoices 
 where Invoicetotal < 10000 and Invoicetotal >= 100
 union
select 'C'CATEGORY, *
 from Invoices 
 where Invoicetotal < 100 
 order by paymentdate