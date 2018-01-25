CREATE TYPE [Measure].[tt_MeasureValue] AS TABLE
(
	ServiceCode nvarchar(50) not null,
	MarketCode nvarchar(50) not null,
	ItemCode nvarchar(50) not null,
	DataSetCode nvarchar(50) not null,
	MeasureTypeCode nvarchar(50) not null,
	ValueTypeCode nvarchar(50) not null,
	UnitsCode nvarchar(50) not null,
	MeasureValue nvarchar(50) not null,
	CalcDateTime datetimeoffset not null,
	primary key (MarketCode, ItemCode, DataSetCode, MeasureTypeCode)
)
