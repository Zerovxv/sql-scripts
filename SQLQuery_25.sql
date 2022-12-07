Begin transaction; 


Delete vendorscopy
    where VendorID= 1


COMMIT;

rollback;

select top 10 *
from vendorscopy 