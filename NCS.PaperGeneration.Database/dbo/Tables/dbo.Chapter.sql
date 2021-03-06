
CREATE TABLE [dbo].[Chapter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChapterName] [nvarchar](max) NOT NULL,
	[ChapterDescription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL,
 CONSTRAINT [PK_dbo.Chapter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

GO

GO
