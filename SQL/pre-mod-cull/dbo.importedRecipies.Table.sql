USE [db858d5789ed564b0c9364a73301643bf4]
GO
/****** Object:  Table [dbo].[importedRecipies]    Script Date: 2019-08-08 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[importedRecipies](
	[Profession] [varchar](50) NULL,
	[result] [varchar](50) NULL,
	[resultQty] [varchar](50) NULL,
	[mat1] [varchar](50) NULL,
	[mat1Qty] [varchar](50) NULL,
	[mat2] [varchar](50) NULL,
	[mat2Qty] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Copper Ingot', N'1', N'Copper Ore', N'4', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Copper Rod', N'1', N'Copper Ore', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Copper Rod', N'4', N'Copper Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tin Ingot', N'4', N'Tin Ore', N'4', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tin Rod', N'1', N'Tin Ore', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tin Rod', N'4', N'Tin Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Bronze Ingot', N'1', N'Copper Ore', N'3', N'Tin Ore', N'1')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Bronze Ingot', N'1', N'Cooper Rod', N'3', N'Tin Rod', N'1')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Bronze Ingot', N'4', N'Cooper Ingot', N'3', N'Tin Ingot', N'1')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Bronze Rod', N'4', N'Bronze Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Iron Ingot', N'1', N'Iron Ore', N'4', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Iron Ingot', N'1', N'"Iron mandible', N' small"', N'2', N',')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Iron Ingot', N'1', N'Iron Mandible', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Iron Rod', N'4', N'Iron Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Iron Rod', N'1', N'Iron Ore', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Redsteel Ingot', N'1', N'Iron Ore', N'4', N'Red Rock', N'1')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Redsteel Rod', N'4', N'Redsteel Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Chromite Chunk', N'4', N'Chromium Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Chromite Ingot', N'1', N'Chromite Chunk', N'4', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tritanium Ingot', N'1', N'Redsteel Ingot', N'1', N'Chromium Ingot', N'1')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tritanium Limb', N'1', N'Tritanium Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tritanium Rod', N'4', N'Tritanium Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Tritanium Skeleton', N'1', N'Tritanium Ingot', N'10', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Nightsteel Crown', N'1', N'Nightsteel Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Nightsteel Ingot', N'1', N'Tritanium Ingot', N'1', N'Magic Skull', N'1')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Dragonite Ingot', N'1', N'Dragonite Ore', N'4', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Dragonite Rod', N'4', N'Dragonite Ingot', N'1', N'', N'')
INSERT [dbo].[importedRecipies] ([Profession], [result], [resultQty], [mat1], [mat1Qty], [mat2], [mat2Qty]) VALUES (N'BLACKSMITH', N'Dragonite Rod', N'1', N'Dragonite Ore', N'1', N'', N'')
