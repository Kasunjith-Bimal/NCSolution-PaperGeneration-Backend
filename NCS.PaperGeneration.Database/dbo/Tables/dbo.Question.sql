
CREATE TABLE [dbo].[Question](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [int] NOT NULL,
	[QuestionContent] [nvarchar](max) NULL,
	[Explantion] [nvarchar](max) NULL,
	[NumberOfChoices] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[CanRandomizeChoices] [bit] NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
	[Language] [nvarchar](max) NULL,
	[Tag] [nvarchar](max) NULL,		
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL,
 CONSTRAINT [PK_dbo.Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

GO

GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT ((0)) FOR [SectionId]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Question_dbo.Sections_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Sections] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_dbo.Question_dbo.Sections_SectionId]
GO
