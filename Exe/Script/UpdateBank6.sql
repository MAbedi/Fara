SET NOCOUNT ON
 if not exists (select * from dbo.sysobjects where id = object_id(N'ScheduleTimePerson') and OBJECTPROPERTY(id, N'IsUserTable')
 = 1)
 begin
 CREATE TABLE ScheduleTimePerson (	TimePersonId int NOT NULL ,	WorkId int NOT NULL ,
 PersonId int NULL ,	Proc_Entity int NULL ,	Proc_Time int NULL ,
 Proc_Note char (500) NULL ,	CONSTRAINT PK_ScheduleTimePersON PRIMARY KEY CLUSTERED
 (		TimePersonId	) ON [PRIMARY] )
 ON [PRIMARY]
 CREATE TABLE ScheduleStuffLossItems (	LossItemId int NOT NULL ,	WorkId int NULL ,
 LossStuffCoding int NULL ,	LossEntity int NULL ,	LossWeight int NULL ,
 LossNote char (500) NULL ,	CONSTRAINT PK_ScheduleStuffLossItems PRIMARY KEY CLUSTERED
 (	LossItemId	) ON [PRIMARY] ) ON [PRIMARY]
 CREATE TABLE ScheduleTimeLossItems (TimeLossId int NOT NULL ,
 WorkId int NOT NULL ,	LoseId int NOT NULL ,	LossTime int NOT NULL ,
 LossCommant char (500) NULL ,	CONSTRAINT PK_ScheduleTimeLossItems PRIMARY KEY CLUSTERED
 (		TimeLossId	) ON [PRIMARY] ) ON [PRIMARY]
 CREATE TABLE ScheduleWorksItems (	ItemsId int NOT NULL ,
 WorkId int NULL ,	ProductModel int NULL CONSTRAINT DF_ScheduleWorksItems_ProductModel DEFAULT (0),
 ProcStuffCoding bigint NULL CONSTRAINT DF_ScheduleWorksItems_ProcStuffCoding DEFAULT (0),
 OrderId int NULL CONSTRAINT DF_ScheduleWorksItems_OrderId DEFAULT (0),
 TrancFormId int NULL CONSTRAINT DF_ScheduleWorksItems_TrancFormId DEFAULT (0),
 WorkTime float NULL ,	ProcAmount float NULL ,	LossAmount1 float NULL ,	LossAmount2 float NULL ,
 CONSTRAINT PK_4 PRIMARY KEY CLUSTERED 	(	ItemsId	) ON [PRIMARY] ) ON [PRIMARY]
 CREATE TABLE ScheduleTimeWorks (	WorkId int NOT NULL ,	WorkNo int NULL ,
 WorkDate char(10) NULL ,	State Tinyint NULL ,	MashinID int NULL ,	ShiftNo Tinyint NULL ,
 ReciptNo int NULL ,	ReciptDate char(10) NULL ,	ProcCode int NULL ,
 CONSTRAINT PK_ScheduleWorkItems PRIMARY KEY CLUSTERED 	(	WorkId	) ON [PRIMARY] ) ON
 [PRIMARY]
 CREATE TABLE ScheduleTimeTabel (TimeTabelId int NOT NULL ,
 KIND int NOT NULL CONSTRAINT DF_ScheduleTimeTabel_KIND DEFAULT (0),	ProcID int NOT NULL ,	MashineID
 int NOT NULL ,
 ProcCode int NOT NULL CONSTRAINT DF_ScheduleTimeTabel_ProcCode DEFAULT (0),
 TrnsFormID int NOT NULL CONSTRAINT DF_ScheduleTimeTabel_TrnsFormID DEFAULT (0),
 S_Date char(10) NOT NULL ,	S_Amount int NOT NULL ,	S_Function int NOT NULL ,
 CONSTRAINT PK_ScheduleTimeTabel PRIMARY KEY CLUSTERED 	(TimeTabelId) ON [PRIMARY] ) ON
 [PRIMARY]
 CREATE TABLE ScheduleProcItems (ProcId int NOT NULL ,	ProcstaffCoding int NOT NULL ,
 ProcCode int NOT NULL CONSTRAINT DF_ScheduleProcItems_ProcCode DEFAULT (0),
 DeliveryDate char(10) NOT NULL CONSTRAINT DF_ScheduleProcItems_DeliveryDate DEFAULT (0),
 Amount float NOT NULL CONSTRAINT DF_ScheduleProcItems_Amount DEFAULT (0),
 ReciptItemId int NOT NULL CONSTRAINT DF_ScheduleProcItems_ReciptItemId DEFAULT (0),
 ProductModel int NOT NULL CONSTRAINT DF_ScheduleProcItems_ProductModel DEFAULT (0),
 CONSTRAINT PK_ScheduleProcItems PRIMARY KEY CLUSTERED 	(ProcId	) ON [PRIMARY] ) ON [PRIMARY]
 CREATE TABLE ScheduleType (	Code int NOT NULL ,	Name varchar (80) NULL ,
 Workload_Normal Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Workload_Normal DEFAULT (0),
 Workload_Time Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Workload_Time DEFAULT (0),
 Workload_Amountd Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Workload_Amountd DEFAULT (0),
 StandardRate Tinyint NOT NULL CONSTRAINT DF_ScheduleType_StandardRate DEFAULT (0),
 Note Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Note DEFAULT (0),
 AccRelatedActive Tinyint NOT NULL CONSTRAINT DF_ScheduleType_AccRelatedActive DEFAULT (0),
 KindActive Tinyint NOT NULL CONSTRAINT DF_ScheduleType_KindActive DEFAULT (0),
 Proc_Line_Active Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Proc_Line_Active DEFAULT (0),
 ReportName1 varchar (80) NULL ,	ReportName2 varchar (80) NULL ,
 MasterNo int NULL CONSTRAINT DF_ScheduleType_MasterNo DEFAULT (0),
 ProcRelatedActive Tinyint NOT NULL CONSTRAINT DF_ScheduleType_ProcRelatedActive DEFAULT (0),
 CONSTRAINT PK_ScheduleType PRIMARY KEY CLUSTERED 	(Code) ON [PRIMARY] ) ON [PRIMARY]
 CREATE TABLE ScheduleInfo (	ScheduleId int NOT NULL ,	Code int NOT NULL ,	InfoId int NOT NULL ,
 InfoName varchar (80) NOT NULL ,	ProcInFoId int NOT NULL CONSTRAINT DF_ScheduleInfo_ProcInFoId DEFAULT
 (0),
 MasterInfoID int NOT NULL CONSTRAINT DF_ScheduleInfo_MasterInfoID DEFAULT (0),	Kind Tinyint NULL ,
 WorkLoad_Normal float NULL ,WorkLoad_Amount float NULL ,WorkLoad_time float NULL ,
 StandardRate money NULL ,Comment varchar (1000) NULL ,	Acc_TopicCode int NULL ,
 Acc_DetailCode int NULL ,	Acc_CTopicCode1 int NULL ,	Acc_CTopicCode2 int NULL ,
 CONSTRAINT PK_ScheduleInfo PRIMARY KEY CLUSTERED (ScheduleId) ON [PRIMARY] ,
 CONSTRAINT FK_ScheduleInfo_ScheduleType FOREIGN KEY (Code) REFERENCES ScheduleType (Code) ON UPDATE
 CASCADE ) ON [PRIMARY]
 CREATE TABLE ScheduleProCode (	ScheduleId int NOT NULL ,	ProcCode int NOT NULL ,
 ProcWordLoad float NOT NULL CONSTRAINT DF_ScheduleProCode_ProcWordLoad DEFAULT (0),
 CONSTRAINT FK_ScheduleProCode_ScheduleInfo FOREIGN KEY 	(ScheduleId
 ) REFERENCES ScheduleInfo (	ScheduleId) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
 end
