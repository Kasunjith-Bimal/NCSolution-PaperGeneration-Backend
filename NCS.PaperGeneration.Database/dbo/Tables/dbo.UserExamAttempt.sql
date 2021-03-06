
CREATE TABLE [dbo].[UserExamAttempt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamId] [int] NOT NULL,
	[LoginUserId] [int] NOT NULL,
	[Attempt] [int] NOT NULL,
	[Marks] [int] NULL,
	[PassofFail] [bit] NULL,
	[ExamDate] [datetime] NOT NULL,
	[Status] TINYINT NOT NULL DEFAULT 0,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL,
 CONSTRAINT [PK_dbo.UserExamAttempt] PRIMARY KEY CLUSTERED 
([Id])WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

GO

GO
ALTER TABLE [dbo].[UserExamAttempt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttempt_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExamAttempt] CHECK CONSTRAINT [FK_dbo.UserExamAttempt_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[UserExamAttempt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttempt_dbo.LoginUser_LoginUserId] FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[LoginUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExamAttempt] CHECK CONSTRAINT [FK_dbo.UserExamAttempt_dbo.LoginUser_LoginUserId]
GO
