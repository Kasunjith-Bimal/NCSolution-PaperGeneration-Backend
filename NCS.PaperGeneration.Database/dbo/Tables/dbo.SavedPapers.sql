
CREATE TABLE [dbo].[SavedPapers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL,
 CONSTRAINT [PK_dbo.SavedPapers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SavedPapers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SavedPapers_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SavedPapers] CHECK CONSTRAINT [FK_dbo.SavedPapers_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[SavedPapers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SavedPapers_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SavedPapers] CHECK CONSTRAINT [FK_dbo.SavedPapers_dbo.Question_QuestionId]
GO
