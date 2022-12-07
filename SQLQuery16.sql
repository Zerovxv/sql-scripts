select accountdescription, count(*) as lineitemcount, sum(InvoiceLineItemAmount) lineitemsum
from InvoiceLineItems i
join GLAccounts g
on i.AccountNo = g.AccountNo
group by AccountDescription
having count(*) > 1
order by count(*) desc