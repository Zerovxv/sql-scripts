select g.accountno, accountdescription
from GLAccounts g
left join InvoiceLineItems i
on g.accountno = i.accountno
where Invoiceid is null
order by g.accountno