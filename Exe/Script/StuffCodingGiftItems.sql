

CREATE TABLE dbo.StuffCodingGiftItems(
	StuffCodingItemID int IDENTITY(1,1) NOT NULL,
	StuffCodeFrom bigint NOT NULL,
	StuffCodeTo bigint NOT NULL,
	MinAmount decimal(20, 4) NOT NULL,
	MaxAmount decimal(20, 4) NOT NULL,
	ForEachPercentGift decimal(20, 4) NOT NULL,
	ForEachAmountGift decimal(20, 4) NOT NULL,
	StuffCodeGift bigint NOT NULL,
	CustIDFrom int NOT NULL,
	CustIDTo int NOT NULL,
	Description_ varchar(150) NULL,
	CONSTRAINT FK_StuffCodingGiftItems_StuffCodingGift FOREIGN KEY(StuffCodeGift) REFERENCES dbo.StuffCoding (c_StuffCode)ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT PK_StuffCodingGiftItems PRIMARY KEY CLUSTERED (	StuffCodingItemID ) ON [PRIMARY]) ON [PRIMARY]