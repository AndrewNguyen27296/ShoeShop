USE [ShoeShop]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[WebActions]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[Brands]    Script Date: 11/12/2017 22:23:04 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/12/2017 22:23:04 ******/
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
/****** Object:  Table [dbo].[Materials]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[Colors]    Script Date: 11/12/2017 22:23:04 ******/
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
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[Masters]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 11/12/2017 22:23:04 ******/
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
/****** Object:  Table [dbo].[MasterRoles]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[ActionRoles]    Script Date: 11/12/2017 22:23:04 ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 11/12/2017 22:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[SizeId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[ProductColors]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 11/12/2017 22:23:05 ******/
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
/****** Object:  ForeignKey [FK_ActionRoles_Roles]    Script Date: 11/12/2017 22:23:04 ******/
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_Roles]
GO
/****** Object:  ForeignKey [FK_ActionRoles_WebActions]    Script Date: 11/12/2017 22:23:04 ******/
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_WebActions] FOREIGN KEY([WebActionId])
REFERENCES [dbo].[WebActions] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_WebActions]
GO
/****** Object:  ForeignKey [FK_MasterRoles_Masters]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Masters] FOREIGN KEY([MasterId])
REFERENCES [dbo].[Masters] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Masters]
GO
/****** Object:  ForeignKey [FK_MasterRoles_Roles]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Roles]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_ProductColors_Colors]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Colors] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Colors]
GO
/****** Object:  ForeignKey [FK_ProductColors_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Products]
GO
/****** Object:  ForeignKey [FK_ProductImages_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
/****** Object:  ForeignKey [FK_Products_Brands]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_Products_Materials]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Materials]
GO
/****** Object:  ForeignKey [FK_ProductSizes_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products]
GO
/****** Object:  ForeignKey [FK_ProductSizes_Sizes]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes]
GO

/* Insert vao table Brands*/
SET IDENTITY_INSERT [Brands] ON
INSERT INTO [Brands] ([Id],[Name])VALUES(1,N'Adidas')
INSERT INTO [Brands] ([Id],[Name])VALUES(2,N'ASICS')
INSERT INTO [Brands] ([Id],[Name])VALUES(3,N'B.O.C')
INSERT INTO [Brands] ([Id],[Name])VALUES(4,N'Converse')
INSERT INTO [Brands] ([Id],[Name])VALUES(5,N'DrMartens')
INSERT INTO [Brands] ([Id],[Name])VALUES(6,N'Eastland')
INSERT INTO [Brands] ([Id],[Name])VALUES(7,N'Fila')
INSERT INTO [Brands] ([Id],[Name])VALUES(8,N'GBX')
INSERT INTO [Brands] ([Id],[Name])VALUES(9,N'Highpoint')
INSERT INTO [Brands] ([Id],[Name])VALUES(10,N'Impo')
INSERT INTO [Brands] ([Id],[Name])VALUES(11,N'Laredo')
INSERT INTO [Brands] ([Id],[Name])VALUES(12,N'Magnum')
INSERT INTO [Brands] ([Id],[Name])VALUES(13,N'Nike')
INSERT INTO [Brands] ([Id],[Name])VALUES(14,N'New Balance')
INSERT INTO [Brands] ([Id],[Name])VALUES(15,N'Puma')
INSERT INTO [Brands] ([Id],[Name])VALUES(16,N'Reebok')
INSERT INTO [Brands] ([Id],[Name])VALUES(17,N'Rocky')
INSERT INTO [Brands] ([Id],[Name])VALUES(18,N'Sporto')
INSERT INTO [Brands] ([Id],[Name])VALUES(19,N'Teva')
INSERT INTO [Brands] ([Id],[Name])VALUES(20,N'Timbaland')
INSERT INTO [Brands] ([Id],[Name])VALUES(21,N'Vans')
INSERT INTO [Brands] ([Id],[Name])VALUES(22,N'Levi')
SET IDENTITY_INSERT [Brands] OFF

/*Insert vao table Categories*/
SET IDENTITY_INSERT [Categories] ON
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(1,N'Men''s',N'Nam')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(2,N'Women''s',N'Nữ')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(3,N'Kid''s',N'Trẻ em')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(4,N'Sport''s',N'Thể thao')
SET IDENTITY_INSERT [Categories] OFF

/*Insert vao table Colors*/
SET IDENTITY_INSERT [Colors] ON
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(1,N'Black',N'Đen',N'000000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(2,N'Grey',N'Xám',N'808080')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(3,N'White',N'Trắng',N'FFFFFF')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(4,N'Bone',N'Trắng đục',N'FFFFF0')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(5,N'Beige',N'Be',N'F5F5DC')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(7,N'Brown',N'Nâu',N'8B4513')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(8,N'Red',N'Đỏ',N'FF0000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(9,N'Purple',N'Tím',N'800080')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(10,N'Blue',N'Xanh da trời',N'0000FF')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(11,N'Green',N'Xanh lá',N'008000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(12,N'Yellow',N'Vàng',N'FFFF00')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(13,N'Orange',N'Cam',N'FFA500')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(14,N'Pink',N'Hồng',N'FFC0CB')
SET IDENTITY_INSERT [Colors] OFF

/*Insert vao table Materials*/
SET IDENTITY_INSERT [Materials] ON
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(1,N'Leather',N'Da')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(2,N'Rubber',N'Cao su')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(3,N'Artificial',N'Nhân tạo')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(4,N'Faux leather',N'Simili')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(5,N'PU',N'Nhựa tổng hợp')
SET IDENTITY_INSERT [Materials] OFF

/*Insert vao table Sizes*/
SET IDENTITY_INSERT [Sizes] ON
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
SET IDENTITY_INSERT [Sizes] OFF

/*Insert vao table Products*/
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('34928',N'Airmax Motion LW',1,4,3,6.200000000000000e+006,0,1,0,10,N'These sneakers, number one, are beautiful! Also, they fit like a glove and perfectly sized',N'Dec 15 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('50029',N'Atwater Chukka',22,1,3,4.000000000000000e+006,1,0,0,0,N'It’s going to be a good day with the Atwater Chukka Sneaker from Levi’s.',N'Oct 10 2017  5:30:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('53566',N'High Top Skate',21,1,1,6.400000000000000e+006,1,0,1,10,N'Get an old-school skate look with the Ward High Top Sneaker from Vans.',N'Nov 10 2017 12:30:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('54277',N'High Scuban',20,1,4,5.300000000000000e+006,0,0,0,0,N'The High Scuban  points the way to your next training session.',N'Dec 10 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('54934',N'R8 Princess',17,2,2,7.000000000000000e+006,0,1,0,0,N'Lace up a retro-stylish look with the R8 Pricess',N'Dec 13 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('55218',N'Sk8',19,1,5,5.000000000000000e+006,1,1,0,0,N'Flex grooves with hot-knife cuts in the outsole for traction and a natural flexibility',N'Dec 11 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('58922',N'Yame',18,1,2,3.500000000000000e+006,1,0,0,20,N'Perforated overlay around midfoot for added support and breathability',N'Dec 12 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('59851',N'Atwood Slip',21,3,2,3.400000000000000e+006,1,0,1,10,N'He''ll love the look, and you''ll love the ease, of the Atwood Slip On Sneaker from Vans',N'Dec 14 2017 12:00:00:000AM',1)


/*Insert vao table ProductColors*/
SET IDENTITY_INSERT [ProductColors] ON
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(1,N'50029',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(2,N'53566',8)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(3,N'54277',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(4,N'55218',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(5,N'58922',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(6,N'54934',3)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(7,N'59851',2)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(8,N'34928',14)
SET IDENTITY_INSERT [ProductColors] OFF

/*Insert vao table ProductImages*/
SET IDENTITY_INSERT [ProductImages] ON
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(1,N'50029',N'50029.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(2,N'50029',N'50029_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(3,N'50029',N'50029_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(4,N'50029',N'50029_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(5,N'50029',N'50029_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(6,N'53566',N'53566.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(7,N'53566',N'53566_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(8,N'53566',N'53566_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(9,N'53566',N'53566_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(10,N'53566',N'53566_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(11,N'54277',N'54277.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(12,N'54277',N'54277_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(13,N'54277',N'54277_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(14,N'54277',N'54277_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(15,N'54277',N'54277_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(16,N'55218',N'55218.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(17,N'55218',N'55218_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(18,N'55218',N'55218_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(19,N'55218',N'55218_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(20,N'55218',N'55218_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(21,N'58922',N'58922.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(22,N'58922',N'58922_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(23,N'58922',N'58922_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(24,N'58922',N'58922_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(25,N'58922',N'58922_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(26,N'54934',N'54934.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(27,N'54934',N'54934_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(28,N'54934',N'54934_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(29,N'54934',N'54934_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(30,N'54934',N'54934_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(31,N'34928',N'34928.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(32,N'34928',N'34928_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(33,N'34928',N'34928_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(34,N'34928',N'34928_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(35,N'34928',N'34928_5.jpg')
SET IDENTITY_INSERT [ProductImages] OFF

/*Insert vao table ProductSizes*/
SET IDENTITY_INSERT [ProductSizes] ON
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(1,N'50029',9,35)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(2,N'50029',10,70)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(3,N'50029',11,27)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(4,N'50029',12,29)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(5,N'50029',13,96)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(6,N'50029',14,60)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(7,N'50029',15,30)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(8,N'50029',16,40)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(9,N'50029',17,55)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(10,N'50029',18,66)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(11,N'50029',19,82)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(12,N'53566',7,47)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(13,N'53566',8,23)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(14,N'53566',9,35)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(15,N'53566',10,67)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(16,N'53566',11,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(17,N'53566',12,53)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(18,N'53566',13,54)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(19,N'53566',14,89)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(20,N'53566',15,24)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(21,N'54277',8,53)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(22,N'54277',9,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(23,N'54277',10,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(24,N'54277',11,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(25,N'54277',12,37)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(26,N'54277',13,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(27,N'55218',8,52)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(28,N'55218',9,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(29,N'55218',10,83)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(30,N'55218',11,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(31,N'55218',12,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(32,N'55218',13,64)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(33,N'55218',14,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(34,N'55218',15,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(35,N'58922',7,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(36,N'58922',8,52)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(37,N'58922',9,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(38,N'58922',10,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(39,N'58922',11,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(40,N'58922',12,34)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(41,N'58922',13,55)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(42,N'54934',5,93)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(43,N'54934',6,19)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(44,N'54934',7,12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(45,N'54934',8,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(46,N'54934',9,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(47,N'54934',10,25)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(48,N'54934',11,17)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(49,N'54934',12,63)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(50,N'59851',1,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(51,N'59851',2,56)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(52,N'59851',3,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(53,N'59851',4,34)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(54,N'59851',5,NULL)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(55,N'59851',6,65)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(56,N'59851',7,69)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(57,N'34928',8,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(58,N'34928',9,72)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(59,N'34928',10,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(60,N'34928',11,45)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(61,N'34928',12,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(62,N'34928',13,65)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(63,N'34928',14,76)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(64,N'34928',15,32)
SET IDENTITY_INSERT [ProductSizes] OFF