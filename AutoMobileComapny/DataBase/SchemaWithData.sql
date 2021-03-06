IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehiclePartFromSupplier_VehiclePart]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]'))
ALTER TABLE [dbo].[VehiclePartFromSupplier] DROP CONSTRAINT [FK_VehiclePartFromSupplier_VehiclePart]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehiclePartFromSupplier_PartsSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]'))
ALTER TABLE [dbo].[VehiclePartFromSupplier] DROP CONSTRAINT [FK_VehiclePartFromSupplier_PartsSupplier]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_Sales_Vehicle]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_DealerAndBrandDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_Sales_DealerAndBrandDetails]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_Sales_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model] DROP CONSTRAINT [FK_Model_Brand]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IsSupplierManufacturer_PartsSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]'))
ALTER TABLE [dbo].[IsSupplierManufacturer] DROP CONSTRAINT [FK_IsSupplierManufacturer_PartsSupplier]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IsSupplierManufacturer_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]'))
ALTER TABLE [dbo].[IsSupplierManufacturer] DROP CONSTRAINT [FK_IsSupplierManufacturer_Manufacturer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails] DROP CONSTRAINT [FK_DispatchedDetails_Vehicle]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails] DROP CONSTRAINT [FK_DispatchedDetails_Manufacturer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Dealer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails] DROP CONSTRAINT [FK_DispatchedDetails_Dealer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealerAndBrandDetails_Dealer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]'))
ALTER TABLE [dbo].[DealerAndBrandDetails] DROP CONSTRAINT [FK_DealerAndBrandDetails_Dealer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealerAndBrandDetails_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]'))
ALTER TABLE [dbo].[DealerAndBrandDetails] DROP CONSTRAINT [FK_DealerAndBrandDetails_Brand]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Brand_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Brand]'))
ALTER TABLE [dbo].[Brand] DROP CONSTRAINT [FK_Brand_Company]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_VehiclePartFromSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] DROP CONSTRAINT [FK_AssembleDetails_VehiclePartFromSupplier]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_VehiclePart]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] DROP CONSTRAINT [FK_AssembleDetails_VehiclePart]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] DROP CONSTRAINT [FK_AssembleDetails_Vehicle]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] DROP CONSTRAINT [FK_AssembleDetails_Model]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PartsSupp__IsMan__0A338187]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartsSupplier] DROP CONSTRAINT [DF__PartsSupp__IsMan__0A338187]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AssembleD__Manuf__093F5D4E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssembleDetails] DROP CONSTRAINT [DF__AssembleD__Manuf__093F5D4E]
END

GO
/****** Object:  Index [UQ__Vehicle__C5DF234CE865123A]    Script Date: 5/3/2015 10:41:49 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND name = N'UQ__Vehicle__C5DF234CE865123A')
ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [UQ__Vehicle__C5DF234CE865123A]
GO
/****** Object:  Table [dbo].[VehiclePartFromSupplier]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]') AND type in (N'U'))
DROP TABLE [dbo].[VehiclePartFromSupplier]
GO
/****** Object:  Table [dbo].[VehiclePart]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehiclePart]') AND type in (N'U'))
DROP TABLE [dbo].[VehiclePart]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
DROP TABLE [dbo].[Vehicle]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sales]') AND type in (N'U'))
DROP TABLE [dbo].[Sales]
GO
/****** Object:  Table [dbo].[PartsSupplier]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartsSupplier]') AND type in (N'U'))
DROP TABLE [dbo].[PartsSupplier]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model]') AND type in (N'U'))
DROP TABLE [dbo].[Model]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[Manufacturer]
GO
/****** Object:  Table [dbo].[IsSupplierManufacturer]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[IsSupplierManufacturer]
GO
/****** Object:  Table [dbo].[DealerPurchaseDetails]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]') AND type in (N'U'))
DROP TABLE [dbo].[DealerPurchaseDetails]
GO
/****** Object:  Table [dbo].[DealerAndBrandDetails]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]') AND type in (N'U'))
DROP TABLE [dbo].[DealerAndBrandDetails]
GO
/****** Object:  Table [dbo].[Dealer]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dealer]') AND type in (N'U'))
DROP TABLE [dbo].[Dealer]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[AssembleDetails]    Script Date: 5/3/2015 10:41:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssembleDetails]') AND type in (N'U'))
DROP TABLE [dbo].[AssembleDetails]
GO
/****** Object:  Table [dbo].[AssembleDetails]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssembleDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssembleDetails](
	[Color] [varchar](20) NOT NULL,
	[ManufactureYear] [int] NOT NULL,
	[VehiclePartId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[ModelId] [int] NOT NULL,
	[PartFromId] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](100) NOT NULL,
	[CompanyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Location] [nvarchar](200) NOT NULL,
	[PhoneNumber] [bigint] NULL,
	[EMail] [nvarchar](50) NOT NULL,
	[Gender] [varchar](6) NOT NULL,
	[Income] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dealer]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dealer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dealer](
	[DealerId] [int] IDENTITY(1,1) NOT NULL,
	[DealerName] [varchar](100) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DealerAndBrandDetails]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DealerAndBrandDetails](
	[DealerAndBrandDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[DealerId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealerAndBrandDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DealerPurchaseDetails]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DealerPurchaseDetails](
	[ManufacturerId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[DealerId] [int] NOT NULL,
	[DateOfPurchase] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IsSupplierManufacturer]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IsSupplierManufacturer](
	[PartsSupplierId] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NOT NULL,
	[Location] [varchar](100) NULL,
	[PlantName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Model]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Model](
	[ModelId] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [varchar](100) NOT NULL,
	[BrandId] [int] NOT NULL,
	[VehicleType] [varchar](50) NOT NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartsSupplier]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartsSupplier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PartsSupplier](
	[PartsSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[PartsSupplierName] [varchar](50) NOT NULL,
	[Location] [nvarchar](100) NULL,
	[IsManufacturer] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PartsSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sales](
	[CustomerId] [int] NOT NULL,
	[DealerAndBrandDetailsId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[DateOfSale] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[VIN] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VehiclePart]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehiclePart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehiclePart](
	[VehiclePartId] [int] IDENTITY(1,1) NOT NULL,
	[VehiclePartName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VehiclePartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehiclePartFromSupplier]    Script Date: 5/3/2015 10:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehiclePartFromSupplier](
	[PartFromId] [int] IDENTITY(1,1) NOT NULL,
	[VehiclePartId] [int] NOT NULL,
	[PartsSupplierId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PartFromId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 3, 18, 1, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 5, 18, 1, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 6, 18, 1, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 7, 18, 1, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 8, 18, 1, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 9, 18, 1, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 10, 18, 1, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 3, 19, 1, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 5, 19, 1, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 6, 19, 1, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 7, 19, 1, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 8, 19, 1, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 9, 19, 1, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 10, 19, 1, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 20, 2, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 20, 2, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 20, 2, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 20, 2, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 20, 2, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 20, 2, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 20, 2, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 3, 21, 2, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 5, 21, 2, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 6, 21, 2, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 7, 21, 2, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 8, 21, 2, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 9, 21, 2, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 10, 21, 2, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 3, 22, 3, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 5, 22, 3, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 6, 22, 3, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 7, 22, 3, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 8, 22, 3, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 9, 22, 3, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 10, 22, 3, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 3, 23, 3, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 5, 23, 3, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 6, 23, 3, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 7, 23, 3, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 8, 23, 3, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 9, 23, 3, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 10, 23, 3, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 24, 4, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 24, 4, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 24, 4, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 24, 4, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 24, 4, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 24, 4, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 24, 4, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 25, 4, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 25, 4, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 25, 4, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 25, 4, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 25, 4, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 25, 4, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 25, 4, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 3, 26, 5, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 5, 26, 5, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 6, 26, 5, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 7, 26, 5, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 8, 26, 5, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 9, 26, 5, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 10, 26, 5, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 27, 5, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 27, 5, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 27, 5, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 27, 5, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 27, 5, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 27, 5, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 27, 5, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 3, 28, 6, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 5, 28, 6, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 6, 28, 6, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 7, 28, 6, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 8, 28, 6, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 9, 28, 6, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 10, 28, 6, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 3, 29, 6, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 5, 29, 6, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 6, 29, 6, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 7, 29, 6, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 8, 29, 6, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 9, 29, 6, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 10, 29, 6, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 30, 7, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 30, 7, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 30, 7, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 30, 7, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 30, 7, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 30, 7, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 30, 7, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 31, 7, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 31, 7, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 31, 7, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 31, 7, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 31, 7, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 31, 7, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 31, 7, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 3, 32, 8, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 5, 32, 8, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 6, 32, 8, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 7, 32, 8, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 8, 32, 8, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 9, 32, 8, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 10, 32, 8, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 3, 33, 8, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 5, 33, 8, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 6, 33, 8, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 7, 33, 8, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 8, 33, 8, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 9, 33, 8, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 10, 33, 8, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 3, 34, 9, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 5, 34, 9, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 6, 34, 9, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 7, 34, 9, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 8, 34, 9, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 9, 34, 9, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 10, 34, 9, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 3, 35, 9, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 5, 35, 9, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 6, 35, 9, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 7, 35, 9, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 8, 35, 9, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 9, 35, 9, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 10, 35, 9, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 36, 10, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 36, 10, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 36, 10, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 36, 10, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 36, 10, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 36, 10, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 36, 10, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 37, 10, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 37, 10, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 37, 10, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 37, 10, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 37, 10, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 37, 10, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 37, 10, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 3, 38, 11, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 5, 38, 11, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 6, 38, 11, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 7, 38, 11, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 8, 38, 11, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 9, 38, 11, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 10, 38, 11, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 3, 39, 11, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 5, 39, 11, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 6, 39, 11, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 7, 39, 11, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 8, 39, 11, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 9, 39, 11, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 10, 39, 11, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 40, 15, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 40, 15, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 40, 15, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 40, 15, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 40, 15, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 40, 15, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 40, 15, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 3, 41, 15, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 5, 41, 15, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 6, 41, 15, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 7, 41, 15, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 8, 41, 15, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 9, 41, 15, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 10, 41, 15, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 3, 42, 16, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 5, 42, 16, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 6, 42, 16, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 7, 42, 16, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 8, 42, 16, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 9, 42, 16, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 10, 42, 16, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 3, 43, 16, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 5, 43, 16, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 6, 43, 16, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 7, 43, 16, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 8, 43, 16, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 9, 43, 16, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 10, 43, 16, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 3, 44, 17, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 5, 44, 17, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 6, 44, 17, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 7, 44, 17, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 8, 44, 17, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 9, 44, 17, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 10, 44, 17, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 3, 45, 17, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 5, 45, 17, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 6, 45, 17, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 7, 45, 17, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 8, 45, 17, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 9, 45, 17, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 10, 45, 17, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 46, 18, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 46, 18, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 46, 18, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 46, 18, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 46, 18, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 46, 18, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 46, 18, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 47, 18, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 47, 18, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 47, 18, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 47, 18, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 47, 18, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 47, 18, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 47, 18, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 3, 48, 19, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 5, 48, 19, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 6, 48, 19, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 7, 48, 19, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 8, 48, 19, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 9, 48, 19, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2010, 10, 48, 19, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 3, 49, 19, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 5, 49, 19, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 6, 49, 19, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 7, 49, 19, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 8, 49, 19, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 9, 49, 19, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2010, 10, 49, 19, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 3, 50, 20, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 5, 50, 20, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 6, 50, 20, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 7, 50, 20, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 8, 50, 20, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 9, 50, 20, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2011, 10, 50, 20, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 3, 51, 20, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 5, 51, 20, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 6, 51, 20, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 7, 51, 20, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 8, 51, 20, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 9, 51, 20, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2011, 10, 51, 20, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 52, 21, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 52, 21, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 52, 21, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 52, 21, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 52, 21, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 52, 21, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 52, 21, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 53, 21, 6)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 53, 21, 9)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 53, 21, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 53, 21, 12)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 53, 21, 14)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 53, 21, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 53, 21, 17)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 3, 54, 22, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 5, 54, 22, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 6, 54, 22, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 7, 54, 22, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 8, 54, 22, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 9, 54, 22, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'White', 2012, 10, 54, 22, 16)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 3, 55, 22, 5)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 5, 55, 22, 8)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 6, 55, 22, 10)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 7, 55, 22, 11)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 8, 55, 22, 13)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 9, 55, 22, 15)
GO
INSERT [dbo].[AssembleDetails] ([Color], [ManufactureYear], [VehiclePartId], [VehicleId], [ModelId], [PartFromId]) VALUES (N'Black', 2012, 10, 55, 22, 16)
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (1, N'Buick', 1)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (2, N'Chevrolet', 1)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (3, N'GMC', 1)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (4, N'Cadillac', 1)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (5, N'Volkswagen', 2)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (6, N'Audi', 2)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (7, N'Porsche', 2)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (8, N'Jaguar', 3)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (9, N'Land Rover', 3)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (10, N'Fiat', 4)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (11, N'Dodge', 4)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (12, N'Chrysler', 4)
GO
INSERT [dbo].[Brand] ([BrandId], [BrandName], [CompanyId]) VALUES (13, N'Jeep', 4)
GO
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (1, N'General Motors')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (2, N'Volkswagen')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (3, N'Tata Motors')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (4, N'Fiat')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (29, N'Willow', N'Kusko', N'90991 Thorburn Ave, New York, NY 10011', 2125824976, N'wkusko@yahoo.com', N'Male', 34000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (33, N'Ernie', N'Stenseth', N'45 E Liberty St, Ridgefield Park, NJ 7660', 2017096245, N'ernie_stenseth@aol.com', N'FeMale', 60000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (35, N'Alishia', N'Sergi', N'2742 Distribution Way, New York, NY 10025', 2128601579, N'asergi@gmail.com', N'FeMale', 51000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (37, N'Jose', N'Stockham', N'128 Bransten Rd, New York, NY 10011', 2126758570, N'jose@yahoo.com', N'Male', 141000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (39, N'Valentine', N'Gillian', N'775 W 17th St, San Antonio, TX 78204', 2108129597, N'valentine_gillian@gmail.com', N'Male', 77000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (48, N'Kanisha', N'Waycott', N'5 Tomahawk Dr, Los Angeles, CA 90006', 323452780, N'kanisha_waycott@yahoo.com', N'FeMale', 79000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (51, N'James', N'Butt', N'6649 N Blue Gum St, New Orleans, LA 70116', 5046218927, N'jbutt@gmail.com', N'Male', 82000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (52, N'Josephine', N'Darakjy', N'4 B Blue Ridge Blvd,Brighton,MI 48116', 8102929388, N'josephine_darakjy@darakjy.org', N'Male', 81000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (53, N'Art', N'Venere', N'8 W Cerritos Ave #54,Bridgeport, NJ 8014', 8566368749, N'art@venere.org', N'Female', 88000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (54, N'Lenna', N'Paprocki', N'639 Main St, Anchorage, AK 99501', 9073854412, N'lpaprocki@hotmail.com', N'Female', 85000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (55, N'Donette', N'Foller', N'34 Center St, Hamilton, OH 45011', 5135701893, N'donette.foller@cox.net', N'Male', 52000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (56, N'Simona', N'Morasca', N'3 Mcauley Dr, Ashland, OH 44805', 4195032484, N'simona@morasca.com', N'Male', 12000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (57, N'Mitsue', N'Tollner', N'67 Eads St, Chicago, IL 60632', 7735736914, N'mitsue_tollner@yahoo.com', N'Male', 62000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (58, N'Leota', N'Dilliard', N'7 W Jackson Blvd, Santa Clara, CA 95111', 4087523500, N'leota@hotmail.com', N'Female', 72000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (59, N'Sage', N'Wieser', N'5 Boston Ave #88, Sioux Falls, LD 57105', 6054142147, N'sage_wieser@cox.net', N'Male', 68000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (60, N'Kris', N'Marrier', N'228 Runamuck Pl #2808, Baltimore, MD 21224', 4106558723, N'kris@gmail.com', N'Male', 56000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (61, N'Minna', N'Amigon', N'2371 Jerrold Ave, Kulpsville, PA 19443', 2158741229, N'minna_amigon@yahoo.com', N'Male', 52000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (62, N'Abel', N'Maclead', N'37275 St  Rt 17m M, Middle Island, NY 11953', 6313353414, N'amaclead@gmail.com', N'Male', 79000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (63, N'Kiley', N'Caldarera', N'25 E 75th St #69, Los Angeles, CA 90034', 3104985651, N'kiley.caldarera@aol.com', N'FeMale', 42000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (64, N'Graciela', N'Ruta', N'98 Connecticut Ave Nw, Chagrin Falls, OH 44023', 4407808425, N'gruta@cox.net', N'FeMale', 58000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (65, N'Cammy', N'Albares', N'56 E Morehead St, Laredo, TX 78045', 9565376195, N'calbares@gmail.com', N'FeMale', 67000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (66, N'Mattie', N'Poquette', N'73 State Road 434 E, Phoenix, AZ 85013', 6022774385, N'mattie@aol.com', N'FeMale', 57000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (67, N'Meaghan', N'Garufi', N'69734 E Carrillo St, Mc Minnville, TN 37110', 9313139635, N'meaghan@hotmail.com', N'FeMale', 59000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (68, N'Gladys', N'Rim', N'322 New Horizon Blvd, Milwaukee, WI 53207', 4146619598, N'gladys.rim@rim.org', N'FeMale', 32000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (69, N'Yuki', N'Whobrey', N'1 State Route 27, Taylor, MI 48180', 3132887937, N'yuki_whobrey@aol.com', N'Male', 97000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (70, N'Fletcher', N'Flosi', N'394 Manchester Blvd, Rockford, IL 61109', 8158282147, N'fletcher.flosi@yahoo.com', N'Male', 92000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (71, N'Bette', N'Nicka', N'6 S 33rd St, Aston, PA 19014', 6105453615, N'bette_nicka@cox.net', N'FeMale', 67000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (72, N'Veronika', N'Inouye', N'6 Greenleaf Ave, San Jose, CA 95111', 4085401785, N'vinouye@aol.com', N'FeMale', 89000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (73, N'Willard', N'Kolmetz', N'618 W Yakima Ave, Irving, TX 75062', 9723039197, N'willard@hotmail.com', N'Male', 98000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (74, N'Maryann', N'Royster', N'74 S Westgate St, Albany, NY 12204', 5189667987, N'mroyster@royster.com', N'Male', 60000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (75, N'Alisha', N'Slusarski', N'3273 State St, Middlesex, NJ 8846', 7326583154, N'alisha@slusarski.com', N'FeMale', 76000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (76, N'Allene', N'Iturbide', N'1 Central Ave, Stevens Point, WI 54481', 7156626764, N'allene_iturbide@cox.net', N'FeMale', 45000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (77, N'Chanel', N'Caudy', N'86 Nw 66th St #8673, Shawnee, KS 66218', 9133882079, N'chanel.caudy@caudy.org', N'FeMale', 42000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (78, N'Ezekiel', N'Chui', N'2 Cedar Ave #84, Easton, MD 21601', 4106691642, N'ezekiel@chui.com', N'Male', 69000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (79, N'Willow', N'Kusko', N'90991 Thorburn Ave, New York, NY 10011', 2125824976, N'wkusko@yahoo.com', N'Male', 34000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (80, N'Bernardo', N'Figeroa', N'386 9th Ave N, Conroe, TX 77301', 9363363951, N'bfigeroa@aol.com', N'Male', 32000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (81, N'Ammie', N'Corrio', N'74874 Atlantic Ave, Columbus, OH 43215', 6148019788, N'ammie@corrio.com', N'FeMale', 41000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (82, N'Francine', N'Vocelka', N'366 South Dr, Las Cruces, NM 88011', 5059773911, N'francine_vocelka@vocelka.com', N'Male', 112000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (83, N'Ernie', N'Stenseth', N'45 E Liberty St, Ridgefield Park, NJ 7660', 2017096245, N'ernie_stenseth@aol.com', N'FeMale', 60000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (84, N'Albina', N'Glick', N'4 Ralph Ct, Dunellen, NJ 8812', 7329247882, N'albina@glick.com', N'FeMale', 47000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (85, N'Alishia', N'Sergi', N'2742 Distribution Way, New York, NY 10025', 2128601579, N'asergi@gmail.com', N'FeMale', 51000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (86, N'Solange', N'Shinko', N'426 Wolf St, Metairie, LA 70002', 5049799175, N'solange@shinko.com', N'Male', 61000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (87, N'Jose', N'Stockham', N'128 Bransten Rd, New York, NY 10011', 2126758570, N'jose@yahoo.com', N'Male', 141000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (88, N'Rozella', N'Ostrosky', N'17 Morena Blvd, Camarillo, CA 93012', 8058326163, N'rozella.ostrosky@ostrosky.com', N'FeMale', 41000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (89, N'Valentine', N'Gillian', N'775 W 17th St, San Antonio, TX 78204', 2108129597, N'valentine_gillian@gmail.com', N'Male', 77000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (90, N'Kati', N'Rulapaugh', N'6980 Dorsett Rd, Abilene, KS 67410', 7854637829, N'kati.rulapaugh@hotmail.com', N'FeMale', 77000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (91, N'Youlanda', N'Schemmer', N'2881 Lewis Rd, Prineville, OR 97754', 5415488197, N'youlanda@aol.com', N'Male', 111000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (92, N'Dyan', N'Oldroyd', N'7219 Woodfield Rd, Overland Park, KS 66204', 9134134604, N'doldroyd@aol.com', N'Male', 121000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (93, N'Roxane', N'Campain', N'1048 Main St, Fairbanks, AK 99708', 9072314722, N'roxane@hotmail.com', N'FeMale', 53000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (94, N'Lavera', N'Perin', N'678 3rd Ave, Miami, FL 33196', 3056067291, N'lperin@perin.org', N'FeMale', 22000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (95, N'Erick', N'Ferencz', N'20 S Babcock St, Fairbanks, AK 99712', 9077411044, N'erick.ferencz@aol.com', N'Male', 88000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (96, N'Fatima', N'Saylors', N'2 Lighthouse Ave, Hopkins, MN 55343', 9527682416, N'fsaylors@saylors.org', N'FeMale', 99000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (97, N'Jina', N'Briddick', N'38938 Park Blvd, Boston, MA 2128', 6173995124, N'jina_briddick@briddick.com', N'FeMale', 86000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (98, N'Kanisha', N'Waycott', N'5 Tomahawk Dr, Los Angeles, CA 90006', 323452780, N'kanisha_waycott@yahoo.com', N'FeMale', 79000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (99, N'Emerson', N'Bowley', N'762 S Main St, Madison, WI 53711', 6083367444, N'emerson.bowley@bowley.org', N'FeMale', 64000)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Location], [PhoneNumber], [EMail], [Gender], [Income]) VALUES (100, N'Blair', N'Malet', N'209 Decker Dr, Philadelphia, PA 19132', 2159079111, N'bmalet@yahoo.com', N'FeMale', 84000)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Dealer] ON 

GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (1, N'Atchison Automotive Group Inc', N'314 Woodlawn Ave Atchison, Kansas 66002')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (2, N'Beckman Motors', N'701 N Maple St Garnett, Kansas 66032')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (3, N'Bogner Inc', N'621 N 7th St Kiowa, Kansas 67070')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (5, N'Crow - Moddie Chevrolet', N'1120 S 4th St Burlington, Kansas 66839')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (7, N'Briggs Buick GMC', N'2312 Stagg Hill Rd Manhattan, Kansas 66502')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (8, N'Buxman Motors', N'1200 Washington Rd Newton, Kansas 67114')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (10, N'Conklin Cars Salina', N'2700 S 9th St Salina, Kansas 67401')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (11, N'Dale Willey Automotive', N'Lawrence Lawrence, Kansas 66046')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (12, N'Bud Brown Volkswagen', N'925 N Rawhide Dr, Olathe, Kansas 66061')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (13, N'Crown Volkswagen', N'3400 Iowa St, Lawrence, Kansas 66046')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (14, N'Sunflower Audi', N'3030 S Kansas Ave, Topeka, Kansas 66611')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (15, N'Audi Springfield', N'3521 E Sunshine St, Springfield, Missouri 65809')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (16, N'Aristocrat Motors', N'9400 W 65th St, Shawnee, Kansas 66203')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (17, N'Audi Springfield', N'11211 E Kellogg Dr, Wichita, Kansas 67207')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (18, N'Autobahn Jaguar', N'3000 White Settlement Rd, Fort Worth, Texas 76107')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (19, N'Audi Springfield', N'15423 W Interstate 10, San Antonio, Texas 78249')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (20, N'Land Rover Merriam', N'9400 W 65th St, Shawnee, Kansas 66203')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (21, N'Autobahn Land Rover', N'100 Adrian Dr, Fort Worth, Texas 76107')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (22, N'Fiat Of Olathe', N'15500 W 117th St, Olathe, Kansas 66062')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (23, N'Fiat Of Wichita', N'5927 E kellogg, Wichita, Kansas 67218')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (24, N'Bob Hoss Dodge Chrysler Jeep', N'6640 State Ave, Kansas City, Kansas 66102')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (25, N'Bolton Chrysler Jeep Dodge', N'11 E Main St, Council Grove, Kansas 66846')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (26, N'C. W. Beamgard Company', N'210 State St, Atwood, Kansas 67730')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (27, N'Chrysler Corner', N'406 E Pancake Blvd, Liberal, Kansas 67901')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (28, N'John Hoffer Chrysler Jeep', N'3220 SW Topeka Blvd, Topeka, Kansas 66611')
GO
INSERT [dbo].[Dealer] ([DealerId], [DealerName], [Location]) VALUES (29, N'Lopp Motors Inc', N'305 N 2nd Ave, Dodge City, Kansas 67801')
GO
SET IDENTITY_INSERT [dbo].[Dealer] OFF
GO
SET IDENTITY_INSERT [dbo].[DealerAndBrandDetails] ON 

GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (2, 2, 1)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (3, 3, 1)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (5, 3, 2)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (6, 5, 2)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (8, 7, 3)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (9, 8, 3)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (11, 10, 4)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (12, 11, 4)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (13, 12, 5)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (14, 13, 5)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (15, 14, 6)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (16, 15, 6)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (17, 16, 7)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (18, 17, 7)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (19, 18, 8)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (20, 19, 8)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (21, 20, 9)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (22, 21, 9)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (23, 22, 10)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (24, 23, 10)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (25, 24, 11)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (26, 25, 11)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (27, 26, 12)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (28, 27, 12)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (29, 28, 13)
GO
INSERT [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId], [DealerId], [BrandId]) VALUES (30, 29, 13)
GO
SET IDENTITY_INSERT [dbo].[DealerAndBrandDetails] OFF
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 18, 1, CAST(0x00009D0200AE315C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 19, 2, CAST(0x00009D2500D088C4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 20, 3, CAST(0x00009FDD00C1B2B8 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 21, 1, CAST(0x00009E6F00AE315C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 22, 2, CAST(0x00009E9500DBABF0 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 23, 3, CAST(0x00009EC900385C20 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 24, 1, CAST(0x00009FDC00AE33B4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (1, 25, 2, CAST(0x0000A03700385C20 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 26, 3, CAST(0x00009CF800EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 27, 5, CAST(0x0000A023010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 28, 3, CAST(0x00009E6500EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 29, 5, CAST(0x00009D48010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 30, 3, CAST(0x00009FD200EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 31, 5, CAST(0x0000A023010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 32, 3, CAST(0x00009CF800EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 33, 5, CAST(0x00009EB5010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 34, 3, CAST(0x00009E6500EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 35, 5, CAST(0x00009D48010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 36, 3, CAST(0x00009FD200EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 37, 5, CAST(0x0000A023010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 38, 3, CAST(0x00009CF800EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 39, 5, CAST(0x00009EB5010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 40, 3, CAST(0x00009FD200EBF8FC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (2, 41, 5, CAST(0x00009D48010507D4 AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (3, 42, 7, CAST(0x00009D6100FAD28C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (3, 43, 8, CAST(0x00009D4900F2A33C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (3, 44, 7, CAST(0x00009ECE00FAD28C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (3, 45, 8, CAST(0x00009EB600F2A33C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (3, 46, 7, CAST(0x0000A03C00FAD28C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (3, 47, 8, CAST(0x0000A02400F2A33C AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 48, 10, CAST(0x00009D7800C0D9EC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 49, 11, CAST(0x00009CFA00AE2CAC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 50, 10, CAST(0x00009EE500C0D9EC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 51, 11, CAST(0x00009E6700AE2CAC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 52, 10, CAST(0x0000A05300C0D9EC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 53, 11, CAST(0x00009FD400AE2CAC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 54, 10, CAST(0x0000A05300C0D9EC AS DateTime))
GO
INSERT [dbo].[DealerPurchaseDetails] ([ManufacturerId], [VehicleId], [DealerId], [DateOfPurchase]) VALUES (4, 55, 11, CAST(0x00009FD400AE2CAC AS DateTime))
GO
INSERT [dbo].[IsSupplierManufacturer] ([PartsSupplierId], [ManufacturerId]) VALUES (2, 3)
GO
INSERT [dbo].[IsSupplierManufacturer] ([PartsSupplierId], [ManufacturerId]) VALUES (3, 2)
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (1, 1, N'3201 Fairfax Trafficway, Kansas City, Kansas 66115', N'Fiarfax Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (2, 2, N'2500 East Grand Blvd, Detroit, Michigan 48211', N'Detroit/Hamtramck Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (3, 3, N'1500 East Route A. Wentzville, Missouri 63385', N'Wentzville Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (4, 4, N'920 Townsend, Lansing, Michigan 48921', N'Lansing Grand River Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (5, 5, N'8001 Volkswagen Dr. Chattanooga, Tennessee 37416', N'Volkswagen Chattanooga Assembly Plant')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (6, 6, N'8001 Volkswagen Dr. Chattanooga, Tennessee 37416', N'Volkswagen Chattanooga Assembly Plant')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (7, 7, N'Bratislava, Slovakia', N'Porsche Touareg')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (8, 8, N'Birmingham, UK', N'Castle Bomwich Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (9, 9, N'Halewood, UK', N'Halewood Body & Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (10, 10, N'3000 W Chrysler Dr. Belvidere, Illinois', N'Belvidere Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (11, 11, N'20000 Conner Ave. Detroit, Michigan 48234', N'Conner Avenue Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (12, 12, N'East Jefferson Avenue. Detroit, Michigan 48215', N'Jefferson North Assembly')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerId], [BrandId], [Location], [PlantName]) VALUES (13, 13, N'38111 Van Dyke. Sterling Heights, Michigan 48312', N'Sterling Heights Assembly')
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 

GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (1, N'Enclave', 1, N'Station Wagon(SUV)', 36600.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (2, N'Lacrosse', 1, N'4 Door Sedan', 30170.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (3, N'Regal', 1, N'Convertible', 27055.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (4, N'Verano', 1, N'4 Door Sedan', 22585.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (5, N'Camaro', 2, N'2 Door Coupe', 23200.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (6, N'Corvette', 2, N'2 Door Coupe', 49525.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (7, N'Corvette Grand Sport', 2, N'Convertible', 55925.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (8, N'Corvette Z06', 2, N'2 Door Coupe', 75525.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (9, N'Corvette ZR1', 2, N'Convertible', 112525.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (10, N'Cruze', 2, N'4 Door Sedan', 16720.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (11, N'Equinox', 2, N'Station Wagon(SUV)', 25200.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (15, N'Volt', 2, N'Convertible', 3995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (16, N'Acadia', 3, N'Station Wagon(SUV)', 32685.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (17, N'Terrain', 3, N'Station Wagon(SUV)', 35160.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (18, N'Yukon', 3, N'Station Wagon', 39860.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (19, N'CTS Coupe', 4, N'2 Door Coupe', 39590.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (20, N'CTS Sport Sedan', 4, N'Convertible', 36790.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (21, N'CTS Sport Wagon', 4, N'Station Wagon', 39890.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (22, N'Escalade', 4, N'Station Wagon(SUV)', 64120.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (23, N'Touareg', 5, N'Station Wagon (SUV)', 44450.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (24, N'Tiguan', 5, N'Station Wagon (SUV)', 23485.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (25, N'Routan', 5, N'Station Wagon/Automatic Transmission', 27020.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (26, N'Passat', 5, N'Convertible', 32195.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (27, N'Jetta', 5, N'4 Door Sedan', 22995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (28, N'A3', 6, N'Station Wagon/6 Speed Transmission', 27270.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (29, N'A4', 6, N'4 Door Sedan', 32500.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (30, N'A5 Cabriolet', 6, N'Convertible', 42600.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (31, N'A6', 6, N'4 Door Sedan', 41700.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (32, N'A7 Quattro', 6, N'4 Door Sedan', 59250.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (33, N'A8 Quattro', 6, N'4 Door Sedan', 78750.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (34, N'911 Carrera Cabriolet', 7, N'Convertible', 90100.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (35, N'911 Carrera 4 Gts Cabriolet', 7, N'Convertible', 120100.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (36, N'911 Targa 4', 7, N'2 Door Coupe', 93500.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (37, N'911 Turbo Cabriolet', 7, N'Convertible', 149000.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (38, N'Boxster S', 7, N'Convertible', 58600.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (39, N'Cayenne', 7, N'Station Wagon(SUV)', 48200.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (40, N'Panamera', 7, N'4 Door Sedan', 75200.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (41, N'XF', 8, N'4 Door Sedan', 53000.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (42, N'XFR', 8, N'4 Door Sedan', 82000.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (43, N'XJ', 8, N'4 Door Sedan', 73700.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (44, N'XK', 8, N'Convertible', 90500.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (45, N'XKR', 8, N'Convertible', 103500.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (46, N'XKR-S', 8, N'Convertible', 138000.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (47, N'LR2', 9, N'Station Wagon(SUV)', 36550.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (48, N'LR4', 9, N'Station Wagon(SUV)', 49750.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (49, N'Range Rover', 9, N'Station Wagon(SUV)', 80275.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (50, N'Range Rover Evoque', 9, N'Station Wagon(2 Door SUV)', 44995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (51, N'Range Rover Spport', 9, N'Station Wagon(SUV)', 60895.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (52, N'500 Pop', 10, N'2 Door Sedan', 17145.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (53, N'500 Sport', 10, N'Convertible', 17600.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (54, N'500 Lounge', 10, N'2 Door Sedan', 18600.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (55, N'500 Turbo', 10, N'2 Door Sedan', 19600.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (56, N'Avenger', 11, N'4 Door Sedan', 18995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (57, N'Caliber', 11, N'Station Wagon(SUV)', 17380.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (58, N'Caravan', 11, N'Grand Caravan', 22420.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (59, N'Challenger', 11, N'2 Door Coupe', 24995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (60, N'Durango', 11, N'Station Wagon(SUV)', 28995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (61, N'200', 12, N'Convertible', 26775.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (62, N'300', 12, N'4 Door Sedan', 27470.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (63, N'Town & Country', 12, N'Passenger Van', 29995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (64, N'Compass', 13, N'Station Wagon', 19295.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (65, N'Grand Cherokee', 13, N'Station Wagon(SUV)', 26995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (66, N'Liberty', 13, N'Station Wagon(SUV)', 23360.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (67, N'Patriot', 13, N'Station Wagon', 15995.0000)
GO
INSERT [dbo].[Model] ([ModelId], [ModelName], [BrandId], [VehicleType], [Price]) VALUES (68, N'Wrangler Sport', 13, N'2 Door', 22045.0000)
GO
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
SET IDENTITY_INSERT [dbo].[PartsSupplier] ON 

GO
INSERT [dbo].[PartsSupplier] ([PartsSupplierId], [PartsSupplierName], [Location], [IsManufacturer]) VALUES (1, N'Johnny Law Motors-Street Rod Parts-Hot Rod Parts', N'201 SE Oak Street, POrtland, OR 97214', 0)
GO
INSERT [dbo].[PartsSupplier] ([PartsSupplierId], [PartsSupplierName], [Location], [IsManufacturer]) VALUES (2, N'Custom Auto Crews Inc', N'646 Sierra Bonita Ave, Los Angeles, CA 90036', 1)
GO
INSERT [dbo].[PartsSupplier] ([PartsSupplierId], [PartsSupplierName], [Location], [IsManufacturer]) VALUES (3, N'Autocraft Manufacturing', N'810 Kemp Street, Merritt Island, FL 32952', 1)
GO
INSERT [dbo].[PartsSupplier] ([PartsSupplierId], [PartsSupplierName], [Location], [IsManufacturer]) VALUES (4, N'Getrag Auto Parts', N'6521 64th St Shawnee, Kansas 66204', 0)
GO
SET IDENTITY_INSERT [dbo].[PartsSupplier] OFF
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (29, 1, 18, CAST(0x00009E5000AE315C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (33, 1, 21, CAST(0x00009F4300AE315C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (35, 1, 24, CAST(0x0000A01800AE315C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (37, 2, 25, CAST(0x0000A05500385C20 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (39, 2, 22, CAST(0x00009EB100DBABF0 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (48, 2, 19, CAST(0x00009D6000D088C4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (51, 3, 20, CAST(0x0000A03800C1B2B8 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (52, 3, 23, CAST(0x00009F2400385C20 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (53, 5, 26, CAST(0x00009DCC00EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (54, 5, 28, CAST(0x00009E8400EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (55, 5, 30, CAST(0x0000A06A00EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (56, 5, 32, CAST(0x00009E0900EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (57, 5, 34, CAST(0x00009EA000EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (58, 5, 36, CAST(0x0000A04B00EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (59, 5, 38, CAST(0x00009DAD00EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (60, 5, 40, CAST(0x0000A04B00EBF8FC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (61, 6, 41, CAST(0x00009D85010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (62, 6, 39, CAST(0x00009ED4010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (63, 6, 37, CAST(0x0000A09D010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (64, 6, 35, CAST(0x00009DA4010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (65, 6, 33, CAST(0x00009EF2010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (66, 6, 31, CAST(0x0000A060010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (67, 6, 29, CAST(0x00009E00010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (68, 6, 27, CAST(0x0000A060010507D4 AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (69, 8, 42, CAST(0x00009D7F00FAD28C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (70, 8, 44, CAST(0x00009F0B00FAD28C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (71, 8, 46, CAST(0x0000A0D500FAD28C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (72, 9, 47, CAST(0x0000A06100F2A33C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (73, 9, 45, CAST(0x00009F3000F2A33C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (74, 9, 43, CAST(0x00009DA500F2A33C AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (75, 11, 48, CAST(0x00009DF300C0D9EC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (76, 11, 50, CAST(0x00009F0400C0D9EC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (77, 11, 52, CAST(0x0000A0AF00C0D9EC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (78, 11, 54, CAST(0x0000A0EC00C0D9EC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (79, 12, 55, CAST(0x0000A02F00AE2CAC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (80, 12, 53, CAST(0x0000A01000AE2CAC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (81, 12, 51, CAST(0x00009EDF00AE2CAC AS DateTime))
GO
INSERT [dbo].[Sales] ([CustomerId], [DealerAndBrandDetailsId], [VehicleId], [DateOfSale]) VALUES (82, 12, 49, CAST(0x00009D5400AE2CAC AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON 

GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (21, N'1G4GE5ER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (20, N'1G4GL5ER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (22, N'1G4GR5ER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (23, N'1G4GS5ER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (18, N'1G4KRAER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (19, N'1G4KVAER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (24, N'1G4PP5ER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (25, N'1G4PR5ER7CU000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (48, N'1G6DA1E53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (50, N'1G6DA5E53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (52, N'1G6DA8E53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (49, N'1G6DB1E53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (51, N'1G6DB5E53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (53, N'1G6DB8E53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (54, N'1G6S3AE53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (55, N'1G6S4AE53C0000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (44, N'1GKALMED6CJ000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (45, N'1GKALSED6CJ000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (42, N'1GKKRNED6CJ000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (43, N'1GKKRPED6CJ000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (46, N'1GKS2AED6CJ000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (47, N'1GKS2CED6CJ000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (38, N'2G1ALBED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (39, N'2G1ALDED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (27, N'2G1FA1ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (26, N'2G1FE1ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (36, N'2G1PA5ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (37, N'2G1PB5ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (40, N'2G1RA6ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (41, N'2G1RB6ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (28, N'2G1YA2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (29, N'2G1YE2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (32, N'2G1YJ2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (33, N'2G1YK2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (34, N'2G1YM2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (35, N'2G1YN2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (30, N'2G1YP2ED4C9000000')
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VIN]) VALUES (31, N'2G1YU2ED4C9000000')
GO
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
GO
SET IDENTITY_INSERT [dbo].[VehiclePart] ON 

GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (1, N'Bonnet')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (2, N'Bumper')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (3, N'Doors and windows')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (4, N'Gauges and meters')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (5, N'Ignition system')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (6, N'Braking system')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (7, N'Engine oil system')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (8, N'Fuel supply system')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (9, N'Suspension and steering system')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (10, N'Transmission system')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (11, N'Air conditoning system(A/c)')
GO
INSERT [dbo].[VehiclePart] ([VehiclePartId], [VehiclePartName]) VALUES (12, N'Audio/Video device')
GO
SET IDENTITY_INSERT [dbo].[VehiclePart] OFF
GO
SET IDENTITY_INSERT [dbo].[VehiclePartFromSupplier] ON 

GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (2, 1, 3)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (3, 2, 1)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (4, 2, 4)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (5, 3, 2)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (6, 3, 4)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (7, 4, 3)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (8, 5, 4)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (9, 5, 1)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (10, 6, 3)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (11, 7, 4)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (12, 7, 3)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (13, 8, 4)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (14, 8, 3)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (15, 9, 3)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (16, 10, 4)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (17, 10, 2)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (18, 11, 1)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (19, 11, 2)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (20, 12, 1)
GO
INSERT [dbo].[VehiclePartFromSupplier] ([PartFromId], [VehiclePartId], [PartsSupplierId]) VALUES (21, 12, 2)
GO
SET IDENTITY_INSERT [dbo].[VehiclePartFromSupplier] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Vehicle__C5DF234CE865123A]    Script Date: 5/3/2015 10:41:50 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND name = N'UQ__Vehicle__C5DF234CE865123A')
ALTER TABLE [dbo].[Vehicle] ADD UNIQUE NONCLUSTERED 
(
	[VIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__AssembleD__Manuf__093F5D4E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssembleDetails] ADD  DEFAULT ((2012)) FOR [ManufactureYear]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PartsSupp__IsMan__0A338187]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartsSupplier] ADD  DEFAULT ((0)) FOR [IsManufacturer]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssembleDetails_Model] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([ModelId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] CHECK CONSTRAINT [FK_AssembleDetails_Model]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssembleDetails_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] CHECK CONSTRAINT [FK_AssembleDetails_Vehicle]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_VehiclePart]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssembleDetails_VehiclePart] FOREIGN KEY([VehiclePartId])
REFERENCES [dbo].[VehiclePart] ([VehiclePartId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_VehiclePart]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] CHECK CONSTRAINT [FK_AssembleDetails_VehiclePart]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_VehiclePartFromSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssembleDetails_VehiclePartFromSupplier] FOREIGN KEY([PartFromId])
REFERENCES [dbo].[VehiclePartFromSupplier] ([PartFromId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssembleDetails_VehiclePartFromSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssembleDetails]'))
ALTER TABLE [dbo].[AssembleDetails] CHECK CONSTRAINT [FK_AssembleDetails_VehiclePartFromSupplier]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Brand_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Brand]'))
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Brand_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Brand]'))
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_Company]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealerAndBrandDetails_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]'))
ALTER TABLE [dbo].[DealerAndBrandDetails]  WITH CHECK ADD  CONSTRAINT [FK_DealerAndBrandDetails_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealerAndBrandDetails_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]'))
ALTER TABLE [dbo].[DealerAndBrandDetails] CHECK CONSTRAINT [FK_DealerAndBrandDetails_Brand]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealerAndBrandDetails_Dealer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]'))
ALTER TABLE [dbo].[DealerAndBrandDetails]  WITH CHECK ADD  CONSTRAINT [FK_DealerAndBrandDetails_Dealer] FOREIGN KEY([DealerId])
REFERENCES [dbo].[Dealer] ([DealerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealerAndBrandDetails_Dealer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerAndBrandDetails]'))
ALTER TABLE [dbo].[DealerAndBrandDetails] CHECK CONSTRAINT [FK_DealerAndBrandDetails_Dealer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Dealer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_DispatchedDetails_Dealer] FOREIGN KEY([DealerId])
REFERENCES [dbo].[Dealer] ([DealerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Dealer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails] CHECK CONSTRAINT [FK_DispatchedDetails_Dealer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_DispatchedDetails_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails] CHECK CONSTRAINT [FK_DispatchedDetails_Manufacturer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_DispatchedDetails_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DispatchedDetails_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealerPurchaseDetails]'))
ALTER TABLE [dbo].[DealerPurchaseDetails] CHECK CONSTRAINT [FK_DispatchedDetails_Vehicle]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IsSupplierManufacturer_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]'))
ALTER TABLE [dbo].[IsSupplierManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_IsSupplierManufacturer_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IsSupplierManufacturer_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]'))
ALTER TABLE [dbo].[IsSupplierManufacturer] CHECK CONSTRAINT [FK_IsSupplierManufacturer_Manufacturer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IsSupplierManufacturer_PartsSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]'))
ALTER TABLE [dbo].[IsSupplierManufacturer]  WITH CHECK ADD  CONSTRAINT [FK_IsSupplierManufacturer_PartsSupplier] FOREIGN KEY([PartsSupplierId])
REFERENCES [dbo].[PartsSupplier] ([PartsSupplierId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IsSupplierManufacturer_PartsSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[IsSupplierManufacturer]'))
ALTER TABLE [dbo].[IsSupplierManufacturer] CHECK CONSTRAINT [FK_IsSupplierManufacturer_PartsSupplier]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Model_Brand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Model]'))
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Brand]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Customer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_DealerAndBrandDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_DealerAndBrandDetails] FOREIGN KEY([DealerAndBrandDetailsId])
REFERENCES [dbo].[DealerAndBrandDetails] ([DealerAndBrandDetailsId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_DealerAndBrandDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_DealerAndBrandDetails]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sales_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sales]'))
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Vehicle]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehiclePartFromSupplier_PartsSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]'))
ALTER TABLE [dbo].[VehiclePartFromSupplier]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePartFromSupplier_PartsSupplier] FOREIGN KEY([PartsSupplierId])
REFERENCES [dbo].[PartsSupplier] ([PartsSupplierId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehiclePartFromSupplier_PartsSupplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]'))
ALTER TABLE [dbo].[VehiclePartFromSupplier] CHECK CONSTRAINT [FK_VehiclePartFromSupplier_PartsSupplier]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehiclePartFromSupplier_VehiclePart]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]'))
ALTER TABLE [dbo].[VehiclePartFromSupplier]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePartFromSupplier_VehiclePart] FOREIGN KEY([VehiclePartId])
REFERENCES [dbo].[VehiclePart] ([VehiclePartId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehiclePartFromSupplier_VehiclePart]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehiclePartFromSupplier]'))
ALTER TABLE [dbo].[VehiclePartFromSupplier] CHECK CONSTRAINT [FK_VehiclePartFromSupplier_VehiclePart]
GO
