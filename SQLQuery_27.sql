

Create or Alter Procedure AddProduct 
    @PartNbr varchar(30) = null, 
    @Name varchar(30) = NULL,
    @Price decimal(9,2) = 10,
    @VendorCode Varchar(30) = null 


as 
    IF @PartNbr is NULL
        return -1;
    If @Name is NULL    
        return -2;
    If @VendorCode is NULL   
        return -3;

Declare @VendorId int; 
 Select @vendorId = Id 
        From Vendors
        where Code = @VendorCode; 

If @VendorId is NULL
return -4; 

Insert Products (PartNbr, Name, Price, VendorId)

Values (@PartNbr, @Name, @Price, @VendorId);
 
 return 0;


GO

Declare @rc int; 
Execute  @rc = AddProduct @PartNbr ='Firehorse3', @Name = 'Fire Tv33 Cube', @Price=75, @VendorCode ='AMAZ' 

Print 'Return code is' + Str(@rc);