USE [GoalShop]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Authorize_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NULL,
	[Role_id] [varchar](10) NULL,
 CONSTRAINT [PK_Authorize] PRIMARY KEY CLUSTERED 
(
	[Authorize_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Category_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[Discount_id] [int] NOT NULL,
	[Percent] [float] NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[Discount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[Favorite_id] [int] NULL,
	[Product_id] [int] NULL,
	[Favorite_date] [date] NULL,
	[Username] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetail_id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NULL,
	[Product_id] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NULL,
	[CreateDate] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[Status] [int] NULL,
	[Phone] [char](11) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_id] [int] NOT NULL,
	[Order_id] [int] NULL,
	[Amount] [float] NULL,
	[CreateDate] [date] NULL,
	[Method] [nvarchar](50) NULL,
	[Payment_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Image1] [varchar](20) NULL,
	[Image2] [varchar](20) NULL,
	[Image3] [varchar](20) NULL,
	[Image4] [varchar](20) NULL,
	[Image5] [varchar](20) NULL,
	[Image6] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Image7] [varchar](20) NULL,
	[Unit_price] [float] NULL,
	[Quantity] [int] NULL,
	[Product_date] [date] NULL,
	[Category_id] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Distcount] [float] NULL,
	[Special] [bit] NULL,
	[Lastest] [bit] NULL,
	[Status] [bit] NULL,
	[Detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/2/2021 8:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Role_id] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorize_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorize_Account]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorize_Role] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Roles] ([Role_id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorize_Role]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Accounts]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Products] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Product_id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Orders]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_id])
REFERENCES [dbo].[Categories] ([Category_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Category]
GO
