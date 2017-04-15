USE [db858d5789ed564b0c9364a73301643bf4]
GO

/****** Object:  Table [dbo].[history]    Script Date: 2017-04-14 7:26:37 PM ******/
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


