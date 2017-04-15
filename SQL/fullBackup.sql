USE [master]
GO
/****** Object:  Database [db858d5789ed564b0c9364a73301643bf4]    Script Date: 2017-04-14 8:10:55 PM ******/
CREATE DATABASE [db858d5789ed564b0c9364a73301643bf4] ON  PRIMARY 
( NAME = N'db858d5789ed564b0c9364a73301643bf4', FILENAME = N'D:\mssqldata\db858d5789ed564b0c9364a73301643bf4.mdf' , SIZE = 2304KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db858d5789ed564b0c9364a73301643bf4_log', FILENAME = N'E:\mssqllog\db858d5789ed564b0c9364a73301643bf4_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db858d5789ed564b0c9364a73301643bf4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET ARITHABORT OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET  MULTI_USER 
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET DB_CHAINING OFF 
GO
USE [db858d5789ed564b0c9364a73301643bf4]
GO
/****** Object:  Table [dbo].[history]    Script Date: 2017-04-14 8:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[itemID] [int] NOT NULL,
	[modificationDate] [datetime] NOT NULL,
	[location] [varchar](50) NOT NULL,
	[qty] [int] NOT NULL,
	[note] [varchar](max) NOT NULL,
	[undone] [bit] NOT NULL,
	[clientName] [varchar](15) NOT NULL,
 CONSTRAINT [PK_history_1] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC,
	[modificationDate] ASC,
	[location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[items]    Script Date: 2017-04-14 8:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cost] [int] NOT NULL,
	[usable] [bit] NOT NULL,
 CONSTRAINT [PK_loot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lootByLocation]    Script Date: 2017-04-14 8:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lootByLocation](
	[id] [int] NOT NULL,
	[location] [varchar](50) NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_lootByLocation] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[recipieIngredients]    Script Date: 2017-04-14 8:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recipieIngredients](
	[recipieID] [int] NOT NULL,
	[ingredient] [int] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_recipieIngredients] PRIMARY KEY CLUSTERED 
(
	[recipieID] ASC,
	[ingredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[recipies]    Script Date: 2017-04-14 8:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recipies](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[result] [int] NOT NULL,
	[resultQty] [int] NOT NULL,
	[profession] [varchar](max) NOT NULL,
	[crafterLevel] [varchar](max) NOT NULL,
 CONSTRAINT [PK_recipies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (0, CAST(N'2017-04-14T23:24:17.543' AS DateTime), N'On Hand', 0, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (4, CAST(N'2017-04-14T22:15:21.847' AS DateTime), N'On Hand', -1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (4, CAST(N'2017-04-14T22:15:32.367' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (4, CAST(N'2017-04-14T22:40:21.870' AS DateTime), N'On Hand', -1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (4, CAST(N'2017-04-14T23:19:10.793' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (8, CAST(N'2017-04-14T00:56:39.920' AS DateTime), N'On Hand', 20, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (8, CAST(N'2017-04-14T00:56:49.983' AS DateTime), N'On Hand', 54, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (8, CAST(N'2017-04-14T00:57:01.590' AS DateTime), N'On Hand', -69, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (9, CAST(N'2017-04-14T00:58:18.293' AS DateTime), N'On Hand', 6, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (10, CAST(N'2017-04-14T01:16:09.077' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (11, CAST(N'2017-04-14T01:16:37.017' AS DateTime), N'On Hand', 2, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (12, CAST(N'2017-04-14T21:51:32.657' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (13, CAST(N'2017-04-14T01:19:30.263' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (14, CAST(N'2017-04-14T01:20:05.987' AS DateTime), N'On Hand', 11, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (15, CAST(N'2017-04-14T01:20:35.830' AS DateTime), N'On Hand', 12, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (16, CAST(N'2017-04-14T21:26:50.437' AS DateTime), N'On Hand', 8, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (16, CAST(N'2017-04-14T23:18:32.667' AS DateTime), N'On Hand', 0, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (17, CAST(N'2017-04-14T21:33:07.780' AS DateTime), N'On Hand', 13, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (18, CAST(N'2017-04-14T21:33:14.183' AS DateTime), N'On Hand', 4, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (19, CAST(N'2017-04-14T21:33:21.750' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (20, CAST(N'2017-04-14T21:40:47.750' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (21, CAST(N'2017-04-14T23:18:54.533' AS DateTime), N'On Hand', 3, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (22, CAST(N'2017-04-14T21:45:48.320' AS DateTime), N'On Hand', 2, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (23, CAST(N'2017-04-14T22:10:27.117' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (24, CAST(N'2017-04-14T22:17:30.010' AS DateTime), N'On Hand', 2, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (25, CAST(N'2017-04-14T23:11:31.917' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (25, CAST(N'2017-04-14T23:12:27.030' AS DateTime), N'On Hand', -1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (25, CAST(N'2017-04-14T23:16:32.177' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (25, CAST(N'2017-04-14T23:16:53.637' AS DateTime), N'On Hand', -1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (25, CAST(N'2017-04-14T23:18:06.483' AS DateTime), N'On Hand', 0, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (26, CAST(N'2017-04-14T22:49:56.613' AS DateTime), N'On Hand', 2, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (27, CAST(N'2017-04-14T23:24:31.020' AS DateTime), N'On Hand', 8, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (28, CAST(N'2017-04-14T23:25:27.360' AS DateTime), N'On Hand', 7, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (29, CAST(N'2017-04-14T23:42:51.977' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (31, CAST(N'2017-04-14T23:50:36.110' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (33, CAST(N'2017-04-14T23:55:49.303' AS DateTime), N'On Hand', 4, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (34, CAST(N'2017-04-15T00:07:51.387' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (35, CAST(N'2017-04-15T00:11:07.337' AS DateTime), N'On Hand', 6, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (36, CAST(N'2017-04-15T00:17:03.227' AS DateTime), N'On Hand', 2, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (37, CAST(N'2017-04-15T00:20:45.430' AS DateTime), N'On Hand', 5, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (38, CAST(N'2017-04-15T00:20:41.080' AS DateTime), N'On Hand', 2, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (39, CAST(N'2017-04-15T00:24:50.727' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (40, CAST(N'2017-04-15T00:26:52.617' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (41, CAST(N'2017-04-15T00:29:28.910' AS DateTime), N'On Hand', 1, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (43, CAST(N'2017-04-15T00:33:40.153' AS DateTime), N'On Hand', 53, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (44, CAST(N'2017-04-15T00:36:55.787' AS DateTime), N'On Hand', 10, N'', 0, N'MOG-LAPTOP')
INSERT [dbo].[history] ([itemID], [modificationDate], [location], [qty], [note], [undone], [clientName]) VALUES (45, CAST(N'2017-04-15T00:36:53.127' AS DateTime), N'On Hand', 10, N'', 0, N'MOG-LAPTOP')
SET IDENTITY_INSERT [dbo].[items] ON 

INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (0, N'Gold Coins', N'Standard currency.', 1, 0)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (1, N'Gnome Mining Helmet', N'Looks like a Fez', 10, 0)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (2, N'Fishing Rod', N'Used to capture fish you can trade at fish markets to gain magic items.', 125, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (3, N'Flint & Steel', N'Lighting a torch with flint and steel is a full-round action, and lighting any other fire with them takes at least that long.', 1, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (4, N'Shackles', N'A manacled creature can use the Escape Artist skill to slip free (DC 30) 
Breaking the manacles requires a Strength check (DC 26) 
Manacles have hardness 10 and 10 hit points.', 15, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (8, N'Torch', N'A torch burns for 1 hour, clearly illuminating a 20-foot radius and providing shadowy illumination out to a 40-foot radius. If a torch is used in combat, treat it as a one-handed improvised weapon that deals bludgeoning damage equal to that of a gauntlet of its size, plus 1 point of fire damage.', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (9, N'Flask of oil', N'Worth 1 silver.
A pint of oil burns for 6 hours in a lantern. You can use a flask of oil as a splash weapon. Use the rules for alchemist’s fire, except that it takes a full round action to prepare a flask with a fuse. Once it is thrown, there is a 50% chance of the flask igniting successfully.

You can pour a pint of oil on the ground to cover an area 5 feet square, provided that the surface is smooth. If lit, the oil burns for 2 rounds and deals 1d3 points of fire damage to each creature in the area.', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (10, N'Fishing Rod, Rosewood', N'Used to capture fish you can trade at fish markets to gain magic items.

+2 to Profession: Fishing', 800, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (11, N'Turtle Shell', N'These are the shells of Tokmo fighters and might be worth something to a collector or as proof we fought them.', 0, 0)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (12, N'Diamond-tip chisel', N'Can be used to mine, or turned into 1/10 of a diamond pebbles item', 36, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (13, N'Mage armour potion', N'+4 AC for 1 hour', 50, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (14, N'Deodorizer potion', N'Prevents tracking by scent', 162, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (15, N'Skeleton Solution', N'Raises a corpse as an undead skeleton', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (16, N'Zombie Puffball', N'Raises a corpse as an undead zombie', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (17, N'Bear traps, wood/bronze', N'Can be setup on a wilderness path to do damage an immobilize', 10, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (18, N'Turtle Helmets (size small)', N'made of a small turtle shell, these helmets are worn by the Tokmo and might be of some value to a collector.', 6, 0)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (19, N'Neutralize Poison Potion', N'A poisoned creature suffers no additional effects from the poison, and any temporary effects are ended, but the spell does not reverse instantaneous effects, such as hit point damage, temporary ability damage, or effects that don’t go away on their own.

The creature is immune to any poison it is exposed to during the duration of the spell, (50 minutes.)', 750, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (20, N'Scale Mail, small', N'The standard set of medium armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 4, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 15 lbs, (small size.)  It has a hardness of 10 and 20 HP.', 50, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (21, N'Banded Mail, small', N'The standard set of heavy armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 6, Has a max dex bonus of 1, a -6 ACP, 35% arcane spell failure, and weighs 17.5 lbs (small.)  It has a hardness of 10 and 20 HP.', 250, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (22, N'Studded Leather', N'The standard set of light armor is made out of mundane hides and Bronze. It is the normal, default type from the players handbook and grants AC 3, Has a max dex bonus of 5, a -1 ACP, 15% arcane spell failure, and weighs 20 lbs. It has a hardness of 2 and 15 HP.', 25, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (23, N'Scale Mail, Iron', N'This set of medium armor is made out of 7 iron ingots. It is made by beginner blacksmiths and grants +6 TempHP, AC 4, Has a max dex bonus of 3, a -4 ACP, 25% arcane spell failure, and weighs 15 lbs, (small size.)  It has a hardness of 10 and 20 HP.
', 275, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (24, N'Chain Shirt', N'The standard set of light armor is made out of Bronze. It is the normal, default type from the players handbook and grants AC 4, Has a max dex bonus of 4, a -2 ACP, 20% arcane spell failure, and weighs 25 lbs.  It has a hardness of 10 and 20 HP.', 100, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (25, N'Heavy Shield', N'The standard wooden heavy sheild is made out of Birch Lumber. It is the normal, default type from the players handbook and grants AC 2, a -2 ACP, 15% arcane spell failure, and weighs 10 lbs.  It has a hardness of 5 and 15 HP.', 7, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (26, N'Club', N'This simple one handed weapon does 1d6 bludgeoning damage with a x2 crit. It can be thrown with a range increment of 10 and weighs 3 lbs. It is just a wooden stick.  It is made out of birch and is the normal, default type from the players handbook.
', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (27, N'Silver Coins', N'Standard Currency, 10 silver = 1 gold', 0, 0)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (28, N'Copper Coins', N'Standard Currency, 100 copper = 1 gold', 0, 0)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (29, N'Buckler', N'The standard metal sheild is made out of Bronze. It is the normal, default type from the players handbook and grants AC 1, a - ACP, 5% arcane spell failure, and weighs 5 lbs.  It has a hardness of 10 and 5 HP.

You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon, but you take a -1 penalty on attack rolls while doing so. If you use a weapon in your off hand, you don’t get the buckler’s AC bonus for the rest of the round.

You can’t bash someone with a buckler.', 15, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (30, N'Dagger, Small, Birch', N'This simple, light, one handed weapon does 1d3 piercing or slashing damage with a 19-20 crit. It can be thrown with a range increment of 10 and weighs 1 lbs. It is a primitive weapon made by the Tokmo out of Birch', 2, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (31, N'Dagger', N'This simple, light, one handed weapon does 1d4 piercing or slashing damage with a 19-20 crit. It can be thrown with a range increment of 10 and weighs 1 lbs. It is made out of bronze and is the normal, default type from the players handbook.', 2, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (32, N'Dagger, Brass', N'This simple, light, one handed weapon does 1d4 piercing or slashing damage with a 19-20 crit. It can be thrown with a range increment of 10 and weighs 1 lbs. It is a standard bronze dagger covered by a brass coating that grants it +1 to hit.', 302, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (33, N'Heavy Crossbow, small', N'This simple ranged two handed weapon does 1d8 piercing damage with a 19-20 crit. It fires bolts with a range increment of 120 and weighs 8 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.

Loading a heavy crossbow is a full-round action that provokes attacks of opportunity.

Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -4 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', 50, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (34, N'Heavy Pickaxe', N'This martial one handed melee weapon does 1d6 piercing damage with a x4 crit. It weighs 6 lbs. and can be used by a miner.  It does not have a diamond tip for mining.  It is made out of bronze and is the normal, default type from the players handbook.', 8, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (35, N'Javelin', N'This simple ranged one handed weapon does 1d6 piercing damage with a x2 crit. It has a range increment of 30 and weighs 2 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.', 1, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (36, N'Light Crossbow', N'This simple ranged two handed weapon does 1d8 piercing damage with a 19-20 crit. It fires bolts with a range increment of 80 and weighs 4 lbs. It is made out of birch/bronze and is the normal, default type from the players handbook.

Loading a light crossbow is a move action that provokes attacks of opportunity.

Normally, operating it requires two hands. However, you can shoot, but not load, with one hand at a -2 penalty on attack rolls. You can shoot with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.
', 35, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (37, N'Long Bow', N'This martial ranged two handed weapon does 1d8 piercing damage with a x3 crit. It fires arrows with a range increment of 100 and weighs 3 lbs. It is made out of birch and is the normal, default type from the players handbook.

Loading a longbow is a free action.

Normally, operating it requires two hands. A longbow is too unwieldy to use while you are mounted.', 75, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (38, N'Long Bow, small', N'This martial ranged two handed weapon does 1d6 piercing damage with a x3 crit. It fires arrows with a range increment of 100 and weighs 3 lbs. It is made out of birch and is the normal, default type from the players handbook.

Loading a longbow is a free action.

Normally, operating it requires two hands. A longbow is too unwieldy to use while you are mounted.', 75, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (39, N'Mace, heavy', N'This simple one handed weapon does 1d8 bludgeoning damage with a x2 crit. It weighs 8 lbs.  It is made out of birch/bronze and is the normal, default type from the players handbook.
', 12, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (40, N'Morning Star', N'This simple one handed weapon does 1d8 bludgeoning and piercing damage with a x2 crit. It weighs 6 lbs.  It is made out of birch/bronze and is the normal, default type from the players handbook.', 8, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (41, N'Short Bow', N'This martial ranged two handed weapon does 1d6 piercing damage with a x3 crit. It fires arrows with a range increment of 60 and weighs 2 lbs. It is made out of birch and is the normal, default type from the players handbook.

Loading a shortbow is a free action.

Normally, operating it requires two hands. You can use a shortbow while mounted.', 30, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (42, N'Spear, small', N'This simple two handed melee weapon does 1d6 piercing damage with a x3 crit. It can be thrown with a range increment of 20 and weighs 6 lbs.  It is made out of bronze and is the normal, default type from the players handbook.', 2, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (43, N'Bolts', N'bolts cost 1/10 gold each. They can be fired from any type of crossbow.

A bolt that misses can be recovered 50% of the time, a bolt that hits always breaks.', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (44, N'Bolts, +2 dispell summon', N'Bolts can be fired from any type of crossbow.

These bolts have +2 attack and damage, and might dispell summoned creatures on hit.

A bolt that misses can be recovered 50% of the time, a bolt that hits always breaks.', 0, 1)
INSERT [dbo].[items] ([id], [name], [description], [cost], [usable]) VALUES (45, N'Arrows, +2 dispell summon', N'Arrows can be fired from any type of longbow, or shortbow.

These arrows have +2 attack and damage, and might dispell summoned creatures on hit.

An arrow that misses can be recovered 50% of the time, an arrow that hits always breaks.', 0, 1)
SET IDENTITY_INSERT [dbo].[items] OFF
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (0, N'On Hand', 4653)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (1, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (2, N'On Hand', 3)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (3, N'On Hand', 3)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (4, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (8, N'On Hand', 5)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (9, N'On Hand', 6)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (10, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (11, N'On Hand', 2)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (12, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (13, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (14, N'On Hand', 11)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (15, N'On Hand', 12)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (16, N'On Hand', 8)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (17, N'On Hand', 13)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (18, N'On Hand', 4)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (19, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (20, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (21, N'On Hand', 3)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (22, N'On Hand', 2)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (23, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (24, N'On Hand', 2)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (25, N'On Hand', 0)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (26, N'On Hand', 2)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (27, N'On Hand', 8)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (28, N'On Hand', 7)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (29, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (31, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (33, N'On Hand', 4)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (34, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (35, N'On Hand', 6)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (36, N'On Hand', 2)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (37, N'On Hand', 5)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (38, N'On Hand', 2)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (39, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (40, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (41, N'On Hand', 1)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (43, N'On Hand', 53)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (44, N'On Hand', 10)
INSERT [dbo].[lootByLocation] ([id], [location], [qty]) VALUES (45, N'On Hand', 10)
ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_loot_description]  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_loot_qty]  DEFAULT ((0)) FOR [cost]
GO
USE [master]
GO
ALTER DATABASE [db858d5789ed564b0c9364a73301643bf4] SET  READ_WRITE 
GO
