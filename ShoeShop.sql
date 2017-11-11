USE [ShoeShop]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebActions]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebActions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WebActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[NameVN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Material] [nvarchar](50) NULL,
	[MaterialVN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NULL,
	[ColorNameVN] [nvarchar](50) NULL,
	[ColorCode] [nchar](6) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeVN] [float] NULL,
	[SizeUS] [float] NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Masters]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masters](
	[Id] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
 CONSTRAINT [PK_Masters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif'),
	[Activated] [bit] NOT NULL CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)),
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterRoles]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MasterRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionRoles]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
	[WebActionId] [int] NOT NULL,
 CONSTRAINT [PK_ActionRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)),
	[Quantity] [int] NOT NULL CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)),
	[Discount] [float] NOT NULL CONSTRAINT [DF_OrderDetails_Discount]  DEFAULT ((0)),
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[SizeId] [int] NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[ColorId] [int] NULL,
 CONSTRAINT [PK_ProductColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[BrandId] [int] NULL,
	[CategoryId] [int] NULL,
	[MaterialId] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Gender] [int] NULL,
	[Special] [bit] NULL,
	[Feature] [bit] NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/11/2017 13:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()),
	[RequireDate] [datetime] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Amount] [float] NOT NULL CONSTRAINT [DF__Orders__Amount__381A47C8]  DEFAULT ((0)),
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_ActionRoles_Roles]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_Roles]
GO
/****** Object:  ForeignKey [FK_ActionRoles_WebActions]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_WebActions] FOREIGN KEY([WebActionId])
REFERENCES [dbo].[WebActions] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_WebActions]
GO
/****** Object:  ForeignKey [FK_MasterRoles_Masters]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Masters] FOREIGN KEY([MasterId])
REFERENCES [dbo].[Masters] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Masters]
GO
/****** Object:  ForeignKey [FK_MasterRoles_Roles]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Roles]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Products]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_ProductColors_Colors]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Colors] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Colors]
GO
/****** Object:  ForeignKey [FK_ProductColors_Products]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Products]
GO
/****** Object:  ForeignKey [FK_ProductImages_Products]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
/****** Object:  ForeignKey [FK_Products_Brands]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_Products_Materials]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Materials]
GO
/****** Object:  ForeignKey [FK_ProductSizes_Products]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products]
GO
/****** Object:  ForeignKey [FK_ProductSizes_Sizes]    Script Date: 11/11/2017 13:36:55 ******/
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes]
GO

/* Insert vao table Brands*/
INSERT INTO [Brands] ([Id],[Name])VALUES(1,'Adidas')
INSERT INTO [Brands] ([Id],[Name])VALUES(2,'ASICS')
INSERT INTO [Brands] ([Id],[Name])VALUES(3,'B.O.C')
INSERT INTO [Brands] ([Id],[Name])VALUES(4,'Converse')
INSERT INTO [Brands] ([Id],[Name])VALUES(5,'DrMartens')
INSERT INTO [Brands] ([Id],[Name])VALUES(6,'Eastland')
INSERT INTO [Brands] ([Id],[Name])VALUES(7,'Fila')
INSERT INTO [Brands] ([Id],[Name])VALUES(8,'GBX')
INSERT INTO [Brands] ([Id],[Name])VALUES(9,'Highpoint')
INSERT INTO [Brands] ([Id],[Name])VALUES(10,'Impo')
INSERT INTO [Brands] ([Id],[Name])VALUES(11,'Laredo')
INSERT INTO [Brands] ([Id],[Name])VALUES(12,'Magnum')
INSERT INTO [Brands] ([Id],[Name])VALUES(13,'Nike')
INSERT INTO [Brands] ([Id],[Name])VALUES(14,'New Balance')
INSERT INTO [Brands] ([Id],[Name])VALUES(15,'Puma')
INSERT INTO [Brands] ([Id],[Name])VALUES(16,'Reebok')
INSERT INTO [Brands] ([Id],[Name])VALUES(17,'Rocky')
INSERT INTO [Brands] ([Id],[Name])VALUES(18,'Sporto')
INSERT INTO [Brands] ([Id],[Name])VALUES(19,'Teva')
INSERT INTO [Brands] ([Id],[Name])VALUES(20,'Timbaland')
INSERT INTO [Brands] ([Id],[Name])VALUES(21,'Vans')
INSERT INTO [Brands] ([Id],[Name])VALUES(22,'Levi')

/*Insert vao table Categories*/
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(1,'Men''s','Nam')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(2,'Women''s','Nữ')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(3,'Kid''s','Trẻ em')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(4,'Sport''s','Thể thao')

/*Insert vao table Colors*/
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(1,'Black','Đen','000000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(2,'Grey','Xám','808080')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(3,'White','Trắng','FFFFFF')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(4,'Bone','Trắng đục','FFFFF0')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(5,'Beige','Be','F5F5DC')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(7,'Brown','Nâu','8B4513')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(8,'Red','Đỏ','FF0000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(9,'Purple','Tím','800080')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(10,'Blue','Xanh da trời','0000FF')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(11,'Green','Xanh lá','008000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(12,'Yellow','Vàng','FFFF00')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(13,'Orange','Cam','FFA500')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(14,'Pink','Hồng','FFC0CB')

/*Insert vao table Materials*/
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(1,'Leather','Da')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(2,'Rubber','Cao su')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(3,'Artificial','Nhân tạo')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(4,'Faux leather','Simili')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(5,'PU','Nhựa tổng hợp')

/*Insert vao table ProductColors*/
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(1,'50029',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(2,'53566',8)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(3,'54277',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(4,'55218',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(5,'58922',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(6,'54934',3)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(7,'59851',2)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(8,'34928',14)

/*Insert vao table ProductImages*/
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(1,'50029','50029.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(2,'50029','50029_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(3,'50029','50029_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(4,'50029','50029_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(5,'50029','50029_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(6,'53566','53566.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(7,'53566','53566_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(8,'53566','53566_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(9,'53566','53566_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(10,'53566','53566_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(11,'54277','54277.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(12,'54277','54277_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(13,'54277','54277_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(14,'54277','54277_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(15,'54277','54277_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(16,'55218','55218.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(17,'55218','55218_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(18,'55218','55218_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(19,'55218','55218_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(20,'55218','55218_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(21,'58922','58922.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(22,'58922','58922_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(23,'58922','58922_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(24,'58922','58922_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(25,'58922','58922_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(26,'54934','54934.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(27,'54934','54934_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(28,'54934','54934_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(29,'54934','54934_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(30,'54934','54934_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(31,'34928','34928.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(32,'34928','34928_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(33,'34928','34928_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(34,'34928','34928_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(35,'34928','34928_5.jpg')

/*Insert vao table Products*/
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('34928','Airmax Motion LW',1,4,3,6.200000000000000e+006,300,0,1,0,10,'These sneakers, number one, are beautiful! Also, they fit like a glove and perfectly sized','Dec 15 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('50029','Atwater Chukka',22,1,3,4.000000000000000e+006,200,1,0,0,0,'It’s going to be a good day with the Atwater Chukka Sneaker from Levi’s.','Oct 10 2017  5:30:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('53566','High Top Skate',21,1,1,6.400000000000000e+006,350,1,0,1,10,'Get an old-school skate look with the Ward High Top Sneaker from Vans.','Nov 10 2017 12:30:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('54277','High Scuban',20,1,4,5.300000000000000e+006,150,0,0,0,0,'The High Scuban  points the way to your next training session.','Dec 10 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('54934','R8 Princess',17,2,2,7.000000000000000e+006,100,0,1,0,0,'Lace up a retro-stylish look with the R8 Pricess','Dec 13 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('55218','Sk8',19,1,5,5.000000000000000e+006,200,1,1,0,0,'Flex grooves with hot-knife cuts in the outsole for traction and a natural flexibility','Dec 11 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('58922','Yame',18,1,2,3.500000000000000e+006,150,1,0,0,20,'Perforated overlay around midfoot for added support and breathability','Dec 12 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Quantity],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('59851','Atwood Slip',21,3,2,3.400000000000000e+006,100,1,0,1,10,'He''ll love the look, and you''ll love the ease, of the Atwood Slip On Sneaker from Vans','Dec 14 2017 12:00:00:000AM',1)

/*Insert vao table ProductSizes*/
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(1,'50029',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(2,'50029',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(3,'50029',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(4,'50029',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(5,'50029',13)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(6,'50029',14)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(7,'50029',15)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(8,'50029',16)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(9,'50029',17)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(10,'50029',18)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(11,'50029',19)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(12,'53566',7)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(13,'53566',8)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(14,'53566',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(15,'53566',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(16,'53566',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(17,'53566',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(18,'53566',13)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(19,'53566',14)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(20,'53566',15)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(21,'54277',8)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(22,'54277',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(23,'54277',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(24,'54277',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(25,'54277',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(26,'54277',13)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(27,'55218',8)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(28,'55218',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(29,'55218',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(30,'55218',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(31,'55218',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(32,'55218',13)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(33,'55218',14)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(34,'55218',15)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(35,'58922',7)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(36,'58922',8)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(37,'58922',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(38,'58922',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(39,'58922',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(40,'58922',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(41,'58922',13)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(42,'54934',5)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(43,'54934',6)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(44,'54934',7)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(45,'54934',8)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(46,'54934',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(47,'54934',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(48,'54934',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(49,'54934',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(50,'59851',1)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(51,'59851',2)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(52,'59851',3)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(53,'59851',4)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(54,'59851',5)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(55,'59851',6)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(56,'59851',7)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(57,'34928',8)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(58,'34928',9)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(59,'34928',10)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(60,'34928',11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(61,'34928',12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(62,'34928',13)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(63,'34928',14)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId])VALUES(64,'34928',15)

/*Insert vao table Sizes*/
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(1,3.400000000000000e+001,4.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(2,3.450000000000000e+001,4.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(3,3.500000000000000e+001,5.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(4,3.550000000000000e+001,5.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(5,3.600000000000000e+001,6.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(6,3.650000000000000e+001,6.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(7,3.700000000000000e+001,7.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(8,3.750000000000000e+001,7.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(9,3.800000000000000e+001,8.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(10,3.850000000000000e+001,8.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(11,3.900000000000000e+001,9.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(12,3.950000000000000e+001,9.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(13,4.000000000000000e+001,1.000000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(14,4.050000000000000e+001,1.050000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(15,4.100000000000000e+001,1.100000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(16,4.150000000000000e+001,1.150000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(17,4.200000000000000e+001,1.200000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(18,4.300000000000000e+001,1.300000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(19,4.400000000000000e+001,1.400000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(20,4.500000000000000e+001,1.500000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(21,4.600000000000000e+001,1.600000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(22,4.700000000000000e+001,1.700000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(23,4.800000000000000e+001,1.800000000000000e+001)