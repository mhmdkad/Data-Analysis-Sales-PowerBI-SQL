USE [master]
GO
/****** Object:  Database [Ecommerce_DB]    Script Date: 1/4/2024 6:58:08 PM ******/
CREATE DATABASE [Ecommerce_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ecommerce_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Ecommerce_DB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ecommerce_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Ecommerce_DB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Ecommerce_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ecommerce_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ecommerce_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ecommerce_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ecommerce_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ecommerce_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ecommerce_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Ecommerce_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Ecommerce_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ecommerce_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ecommerce_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ecommerce_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ecommerce_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ecommerce_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ecommerce_DB', N'ON'
GO
ALTER DATABASE [Ecommerce_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [Ecommerce_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Ecommerce_DB]
GO
/****** Object:  Table [dbo].[ecommerce_data]    Script Date: 1/4/2024 6:58:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_data](
	[customer_id] [varchar](50) NOT NULL,
	[customer_first_name] [nvarchar](50) NOT NULL,
	[customer_last_name] [nvarchar](50) NOT NULL,
	[category_name] [varchar](50) NOT NULL,
	[product_name] [varchar](200) NOT NULL,
	[customer_segment] [varchar](50) NOT NULL,
	[customer_city] [varchar](50) NOT NULL,
	[customer_state] [varchar](50) NOT NULL,
	[customer_country] [varchar](50) NOT NULL,
	[customer_region] [varchar](50) NOT NULL,
	[delivery_status] [varchar](50) NOT NULL,
	[order_date] [date] NOT NULL,
	[order_id] [varchar](50) NOT NULL,
	[ship_date] [date] NOT NULL,
	[shipping_type] [varchar](50) NOT NULL,
	[days_for_shipment_scheduled] [tinyint] NOT NULL,
	[days_for_shipment_real] [tinyint] NOT NULL,
	[order_item_discount] [float] NOT NULL,
	[sales_per_order] [float] NOT NULL,
	[order_quantity] [tinyint] NOT NULL,
	[profit_per_order] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[us_state_long_lat_codes]    Script Date: 1/4/2024 6:58:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[us_state_long_lat_codes](
	[state] [varchar](50) NOT NULL,
	[latitude] [float] NOT NULL,
	[longitude] [float] NOT NULL,
	[name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Ecommerce_DB] SET  READ_WRITE 
GO
