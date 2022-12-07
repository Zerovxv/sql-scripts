select vendorname, DefaultaccountNo, accountdescription
from vendors v
join GLAccounts g 
on v.DefaultAccountNo = g.AccountNo
order by accountdescription, Vendorname