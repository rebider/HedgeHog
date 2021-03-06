﻿CREATE TABLE [dbo].[TradingMacro] (
    [Pair]                             NVARCHAR (8)     CONSTRAINT [DF__TradingMac__Pair__517BBDC6] DEFAULT ((1)) NOT NULL,
    [TradingRatio]                     FLOAT (53)       CONSTRAINT [DF__TradingMa__Tradi__526FE1FF] DEFAULT ((1)) NOT NULL,
    [UID]                              UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [LimitBar]                         INT              CONSTRAINT [DF__TradingMa__Limit__53640638] DEFAULT ((5)) NOT NULL,
    [CurrentLoss]                      FLOAT (53)       CONSTRAINT [DF__TradingMa__Curre__54582A71] DEFAULT ((0)) NOT NULL,
    [ReverseOnProfit]                  BIT              CONSTRAINT [DF__TradingMa__Rever__554C4EAA] DEFAULT ((1)) NOT NULL,
    [FreezLimit]                       INT              CONSTRAINT [DF__TradingMa__Freez__564072E3] DEFAULT ((0)) NOT NULL,
    [CorridorMethod]                   INT              CONSTRAINT [DF__TradingMa__Corri__5734971C] DEFAULT ((1)) NOT NULL,
    [FreezeStop]                       INT              CONSTRAINT [DF__TradingMa__Freez__5828BB55] DEFAULT ((1)) NOT NULL,
    [FibMax]                           NVARCHAR (256)   CONSTRAINT [DF__TradingMa__FibMa__591CDF8E] DEFAULT ('9,6,4') NOT NULL,
    [FibMin]                           FLOAT (53)       CONSTRAINT [DF__TradingMa__FibMi__5A1103C7] DEFAULT ((2)) NOT NULL,
    [CorridornessMin]                  FLOAT (53)       CONSTRAINT [DF__TradingMa__Corri__5B052800] DEFAULT ((0.25)) NOT NULL,
    [CorridorIterationsIn]             INT              CONSTRAINT [DF__TradingMa__Corri__5BF94C39] DEFAULT ((1)) NOT NULL,
    [CorridorIterationsOut]            INT              CONSTRAINT [DF__TradingMa__Corri__5CED7072] DEFAULT ((2)) NOT NULL,
    [CorridorIterations]               NVARCHAR (16)    CONSTRAINT [DF__TradingMa__Corri__5DE194AB] DEFAULT ('1,2,3,4') NOT NULL,
    [CorridorBarMinutes]               INT              CONSTRAINT [DF__TradingMa__Corri__5ED5B8E4] DEFAULT ((1)) NOT NULL,
    [PairIndex]                        INT              CONSTRAINT [DF__TradingMa__PairI__5FC9DD1D] DEFAULT ((1)) NOT NULL,
    [TradingGroup]                     INT              CONSTRAINT [DF__TradingMa__Tradi__60BE0156] DEFAULT ((0)) NOT NULL,
    [MaximumPositions]                 INT              CONSTRAINT [DF__TradingMa__Maxim__61B2258F] DEFAULT ((3)) NOT NULL,
    [IsActive]                         BIT              CONSTRAINT [DF__TradingMa__IsAct__62A649C8] DEFAULT ((1)) NOT NULL,
    [TradingMacroName]                 NVARCHAR (64)    CONSTRAINT [DF__TradingMa__Tradi__639A6E01] DEFAULT ('Case 01') NOT NULL,
    [LimitCorridorByBarHeight]         BIT              CONSTRAINT [DF__TradingMa__Limit__648E923A] DEFAULT ((1)) NOT NULL,
    [MaxLotByTakeProfitRatio]          FLOAT (53)       CONSTRAINT [DF__TradingMa__MaxLo__6582B673] DEFAULT ((2)) NOT NULL,
    [BarPeriodsLow]                    INT              CONSTRAINT [DF__TradingMa__BarPe__6676DAAC] DEFAULT ((45)) NOT NULL,
    [BarPeriodsHigh]                   INT              CONSTRAINT [DF__TradingMa__BarPe__676AFEE5] DEFAULT ((60)) NOT NULL,
    [StrictTradeClose]                 BIT              CONSTRAINT [DF__TradingMa__Stric__685F231E] DEFAULT ((1)) NOT NULL,
    [BarPeriodsLowHighRatio]           FLOAT (53)       CONSTRAINT [DF__TradingMa__BarPe__69534757] DEFAULT ((0.85)) NOT NULL,
    [LongMAPeriod]                     INT              CONSTRAINT [DF__TradingMa__LongM__6A476B90] DEFAULT ((14)) NOT NULL,
    [CorridorAverageDaysBack]          INT              CONSTRAINT [DF__TradingMa__Corri__6B3B8FC9] DEFAULT ((2)) NOT NULL,
    [CorridorPeriodsStart]             INT              CONSTRAINT [DF__TradingMa__Corri__6C2FB402] DEFAULT ((240)) NOT NULL,
    [CorridorPeriodsLength]            INT              CONSTRAINT [DF__TradingMa__Corri__6D23D83B] DEFAULT ((240)) NOT NULL,
    [CorridorStartDate]                DATETIME         NULL,
    [CorridorRatioForRange]            FLOAT (53)       CONSTRAINT [DF__TradingMa__Corri__6E17FC74] DEFAULT ((0.6)) NOT NULL,
    [CorridorRatioForBreakout]         FLOAT (53)       CONSTRAINT [DF__TradingMa__Corri__6F0C20AD] DEFAULT ((0.2)) NOT NULL,
    [RangeRatioForTradeLimit]          FLOAT (53)       CONSTRAINT [DF__TradingMa__Range__700044E6] DEFAULT ((0.3)) NOT NULL,
    [TradeByAngle]                     BIT              CONSTRAINT [DF__TradingMa__Trade__70F4691F] DEFAULT ((0)) NOT NULL,
    [ProfitToLossExitRatio]            FLOAT (53)       CONSTRAINT [DF__TradingMa__Profi__71E88D58] DEFAULT ((10)) NOT NULL,
    [TradeByFirstWave]                 BIT              CONSTRAINT [DF__TradingMa__Trade__72DCB191] DEFAULT ((0)) NULL,
    [PowerRowOffset]                   INT              CONSTRAINT [DF__TradingMa__Power__73D0D5CA] DEFAULT ((100)) NOT NULL,
    [RangeRatioForTradeStop]           FLOAT (53)       CONSTRAINT [DF__TradingMa__Range__74C4FA03] DEFAULT ((1)) NOT NULL,
    [ReversePower]                     BIT              CONSTRAINT [DF__TradingMa__Rever__75B91E3C] DEFAULT ((0)) NOT NULL,
    [CorrelationTreshold]              FLOAT (53)       CONSTRAINT [DF__TradingMa__Corre__76AD4275] DEFAULT ((0.9)) NOT NULL,
    [CloseOnProfitOnly]                BIT              CONSTRAINT [DF__TradingMa__Close__77A166AE] DEFAULT ((0)) NOT NULL,
    [CloseOnProfit]                    BIT              CONSTRAINT [DF__TradingMa__Close__78958AE7] DEFAULT ((1)) NOT NULL,
    [CloseOnOpen]                      BIT              CONSTRAINT [DF__TradingMa__Close__7989AF20] DEFAULT ((0)) NOT NULL,
    [StreachTradingDistance]           BIT              CONSTRAINT [DF__TradingMa__Strea__7A7DD359] DEFAULT ((1)) NOT NULL,
    [CloseAllOnProfit]                 BIT              CONSTRAINT [DF__TradingMa__Close__7B71F792] DEFAULT ((0)) NOT NULL,
    [ReverseStrategy]                  BIT              CONSTRAINT [DF__TradingMa__Rever__7C661BCB] DEFAULT ((0)) NOT NULL,
    [TradeAndAngleSynced]              BIT              CONSTRAINT [DF__TradingMa__Trade__7D5A4004] DEFAULT ((1)) NOT NULL,
    [TradingAngleRange]                FLOAT (53)       CONSTRAINT [DF__TradingMa__Tradi__7E4E643D] DEFAULT ((5)) NOT NULL,
    [CloseByMomentum]                  BIT              CONSTRAINT [DF__TradingMa__Close__7F428876] DEFAULT ((0)) NOT NULL,
    [TradeByRateDirection]             BIT              CONSTRAINT [DF__TradingMa__Trade__0036ACAF] DEFAULT ((0)) NOT NULL,
    [SupportDate]                      DATETIME         NULL,
    [ResistanceDate]                   DATETIME         NULL,
    [GannAnglesOffset]                 FLOAT (53)       NULL,
    [GannAngles]                       NVARCHAR (1024)  CONSTRAINT [DF__TradingMa__GannA__012AD0E8] DEFAULT ('8,4,3,2,1,1.0/2,1.0/3,1.0/4,1.0/8') NOT NULL,
    [IsGannAnglesManual]               BIT              CONSTRAINT [DF__TradingMa__IsGan__021EF521] DEFAULT ((0)) NOT NULL,
    [GannAnglesAnchorDate]             DATETIME         NULL,
    [SpreadShortToLongTreshold]        FLOAT (53)       CONSTRAINT [DF__TradingMa__Sprea__0313195A] DEFAULT ((0.5)) NOT NULL,
    [SupportPriceStore]                FLOAT (53)       NULL,
    [ResistancePriceStore]             FLOAT (53)       NULL,
    [SuppResLevelsCount]               INT              CONSTRAINT [DF__TradingMa__SuppR__04073D93] DEFAULT ((3)) NOT NULL,
    [DoStreatchRates]                  BIT              CONSTRAINT [DF__TradingMa__DoStr__04FB61CC] DEFAULT ((1)) NOT NULL,
    [IsSuppResManual]                  BIT              CONSTRAINT [DF__TradingMa__IsSup__05EF8605] DEFAULT ((0)) NOT NULL,
    [TradeOnCrossOnly]                 BIT              CONSTRAINT [DF__TradingMa__Trade__06E3AA3E] DEFAULT ((0)) NOT NULL,
    [TakeProfitFunctionInt]            INT              CONSTRAINT [DF__TradingMa__TakeP__07D7CE77] DEFAULT ((0)) NOT NULL,
    [DoAdjustTimeframeByAllowedLot]    BIT              CONSTRAINT [DF__TradingMa__DoAdj__08CBF2B0] DEFAULT ((0)) NOT NULL,
    [IsColdOnTrades]                   BIT              CONSTRAINT [DF__TradingMa__IsCol__09C016E9] DEFAULT ((0)) NOT NULL,
    [CorridorCrossesCountMinimum]      INT              CONSTRAINT [DF__TradingMa__Corri__0AB43B22] DEFAULT ((3)) NOT NULL,
    [StDevToSpreadRatio]               FLOAT (53)       CONSTRAINT [DF__TradingMa__StDev__0BA85F5B] DEFAULT ((2)) NOT NULL,
    [LoadRatesSecondsWarning]          INT              CONSTRAINT [DF__TradingMa__LoadR__0C9C8394] DEFAULT ((5)) NOT NULL,
    [CorridorHighLowMethodInt]         INT              CONSTRAINT [DF__TradingMa__Corri__0D90A7CD] DEFAULT ((1)) NOT NULL,
    [CorridorStDevRatioMax]            FLOAT (53)       CONSTRAINT [DF__TradingMa__Corri__0E84CC06] DEFAULT ((0.75)) NOT NULL,
    [CorridorLengthMinimum]            FLOAT (53)       CONSTRAINT [DF__TradingMa__Corri__0F78F03F] DEFAULT ((0.1)) NOT NULL,
    [CorridorCrossHighLowMethodInt]    INT              CONSTRAINT [DF__TradingMa__Corri__106D1478] DEFAULT ((0)) NOT NULL,
    [MovingAverageTypeInt]             INT              NULL,
    [PriceCmaLevels]                   INT              CONSTRAINT [DF__TradingMa__Price__116138B1] DEFAULT ((3)) NOT NULL,
    [VolumeTresholdIterations]         INT              CONSTRAINT [DF__TradingMa__Volum__12555CEA] DEFAULT ((1)) NOT NULL,
    [StDevTresholdIterations]          INT              CONSTRAINT [DF__TradingMa__StDev__13498123] DEFAULT ((1)) NOT NULL,
    [StDevAverageLeewayRatio]          FLOAT (53)       CONSTRAINT [DF__TradingMa__StDev__143DA55C] DEFAULT ((0.9)) NOT NULL,
    [ExtreamCloseOffset]               INT              CONSTRAINT [DF__TradingMa__Extre__1531C995] DEFAULT ((1)) NOT NULL,
    [CurrentLossInPipsCloseAdjustment] FLOAT (53)       CONSTRAINT [DF__TradingMa__Curre__1625EDCE] DEFAULT ((0.9)) NOT NULL,
    [CorridorBigToSmallRatio]          FLOAT (53)       CONSTRAINT [DF__TradingMa__Corri__171A1207] DEFAULT ((2)) NOT NULL,
    [ResetOnBalance]                   FLOAT (53)       NULL,
    [VoltageFunction]                  INT              CONSTRAINT [DF_TradingMacro_VoltageFunction] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK__TradingMacro__0000000000000086] PRIMARY KEY CLUSTERED ([UID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [UQ__TradingMacro__000000000000007E]
    ON [dbo].[TradingMacro]([UID] ASC);

