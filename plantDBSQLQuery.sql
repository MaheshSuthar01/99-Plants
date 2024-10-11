create table tblUsers
(
	Uid int identity(1,1) primary key not null,
	Username nvarchar(100)Null,
	Password nvarchar(100)Null,
	ConfirmPassword nvarchar(100)Null,
	Email nvarchar(100)Null,
	Usertype nvarchar(50)Null
)




create table ForgotPass
(
	Id nvarchar(400) not null,
	Uid int null,
	RequestDateTime DATETIME null,
	Constraint [FK_ForgotPass_tblUsers] FOREIGN KEY ([Uid]) REFERENCES [tblUsers] ([Uid])

)



create table tblCategory
(
	CatID int identity(1,1) Primary key,
	CatName nvarchar(MAX)
)

create table tblProduct
(
	PID int identity(1,1) Primary key,
	PName nvarchar(MAX),
	PPrice money,
	PSelPrice money,
	PCategoryID int,
	PQuanitiy int,
	Constraint [FK_tblProduct_ToTable1] FOREIGN KEY ([PCategoryID]) REFERENCES [tblCategory] ([CatID])
)



create table tblProductImages
(
	PIMGID int identity(1,1) Primary key,
	PID int,
	Name nvarchar(MAX),
	Extention nvarchar(500),
	Constraint [FK_tblProductImages_ToTable] FOREIGN KEY ([PID]) REFERENCES [tblProduct] ([PID])

)



create table tblProductSizeQuantity
(
	PrdSizeQuantID int identity(1,1) Primary key,
	PID int,
	Quantity int,
	Constraint [FK_tblProductSizeQuantity_ToTable] FOREIGN KEY ([PID]) REFERENCES [tblProduct] ([PID])
)





Create Procedure sp_InsertProduct
(
@PName nvarchar(MAX),
@PPrice money,
@PSelPrice money,
@PCategoryID int,
@PQuanitiy int,
@Category nvarchar(50)
)
as

insert into tblProduct values(@PName,@PPrice,@PSelPrice,@PCategoryID,@PQuanitiy,@Category)
select SCOPE_IDENTITY()
Return 0



Create Procedure sp_InsertQuantity
(
@Quantity int,
@Category nvarchar(50)
)
as

insert into tblProductSizeQuantity values(@Quantity,@Category)
select SCOPE_IDENTITY()
Return 0


CREATE TABLE Cart (
    ID int IDENTITY(1,1) NOT NULL,
    UserID int NOT NULL,
    ProductID int NOT NULL,
    Quantity int NOT NULL,
    CONSTRAINT PK_Cart PRIMARY KEY CLUSTERED (ID),
    CONSTRAINT FK_Cart_tblUsers FOREIGN KEY (UserID) REFERENCES dbo.tblUsers (Uid),
    CONSTRAINT FK_Cart_tblProduct FOREIGN KEY (ProductID) REFERENCES dbo.tblProduct (PID)
);

CREATE TABLE [dbo].[Wishlist] (
    [ProductID] INT NOT NULL,
    [ProductName] NVARCHAR(50) NOT NULL,
    [ProductDescription] NVARCHAR(500) NULL,
    [ProductImageURL] NVARCHAR(500) NULL,
	[Productprice] NVARCHAR(10)NOT NULL
);

create table cartDetail
(
	PID int identity(1,1) Primary key,
	PName nvarchar(MAX),
	PPrice money,
	PSelPrice money,
	PCategoryID int,
	PQuanitiy int,
)

