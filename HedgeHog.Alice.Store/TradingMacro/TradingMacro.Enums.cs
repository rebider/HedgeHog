﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HedgeHog.Alice {
  public enum VoltageFunction {
    None = 0,
    Sdi = 4,
    Volume = 5,
    Rsd = 6,
    FractalDensity = 7,
    HarmonicMin = 8,
    AboveBelowRatio = 10,
    StDevInsideOutRatio = 20,
    Volatility = 30,
    HourlyStDevAvg = 40,
    HourlyRsdAvg = 41,
    StDevByHeight = 50,
    StDevSumRatio = 60,
    CorridorRsd = 70,
    CorridorRsdI = 71,
    CorridorStDevIR = 72,
    DistanceAvg = 80
  }
}
namespace HedgeHog.Alice.Store {
  public enum ScanCorridorFunction {
    Fixed = 1,
    TillFlat2 = 3,
    BigGap = 4,
    BigGap2 = 5,
    Spike = 6,
    Spike2 = 7,
    Spike231 = 8,
    Spike24 = 9,
    Spike30 = 10,
    Distance = 11,
    Distance2 = 12,
    Distance3 = 13,
    Distance5 = 14,
    Distance6 = 15,
    Distance7 = 16,
    StDevIntegral = 17,
    StDevIntegral3 = 18,
    HorizontalProbe = 200,
    WaveStDevHeight = 80,
    StDevMinInRange = 81,
    RangeDistance = 91,
    RangeDistanceMax = 92,
    RangeDistanceMin = 93,
    Sinus = 20,
    Sinus1 = 21,
    StDevAngle = 40,
    StDevBalance = 44,
    StDevBalanceR = 45,
    StDevSplits = 46,
    StDevSplits3 = 48,
    TimeRatio = 59,
    Height = 60,
    TimeFrame = 62,
    TimeFrame2 = 65,
    Ftt = 64
  }
  public enum TrailingWaveMethod {
    DistAvgMin = -11,
    DistAvgMax = -12,
    DistAvgMinMax = -13,
    DistAvg = -14,
    DistAvgLT = -15,
    DistAvgLT2 = -16,
    DistAvgLT3 = -17,
    DistAvgLT31 = -18,
    TillFlat = -19,
    BigGap = -20,
    BigGap2 = -21,
    BigGap21 = -22,
    TimeFrame2 = 5,
    Spike = 7,
    Spike2 = 8,
    FrameAngle = 81,
    FrameAngle2 = 82,
    FrameAngle3 = 83,
    FrameAngle31 = 84,
    FrameAngle32 = 85,
    FrameAngle4 = 86,
    StDevFlat = 87,
    StDevFlat2 = 88,
    StDevFlat3 = 89,
    StDevFlat4 = 90,
    Spike3 = 9,
    Spike4 = 10,
    ManualRange = 1,
    ElliottWave = 60,
    LongCross = 80,
    LongLine = 160,
    Recorder = 1000
  }
  public enum TradingMacroTakeProfitFunction {
    CorridorStDevMin = 3,
    CorridorStDevMax = 4,
    CorridorHeight = 5,
    BuySellLevels = 6,
    BuySellLevels2 = 7,
    BuySellLevels_2 = 8,
    BuySellLevels_X = 9,
    RatesHeight = 10,
    RatesStDevMax = 11,
    RatesHeight_2 = 12,
    WaveShort = 13,
    WaveTradeStart = 14,
    RatesStDevMin = 15,
    RatesStDevAvg = 16,
    Spread = 20,
    Zero = 25,
    PriceSpread = 26,
    WaveShortStDev = 27,
    WaveTradeStartStDev = 28,
    CorridorHeight_BS = 29, 
    RegressionLevels = 30,
    RatesHeight_3 = 103,
    RatesHeight_4 = 104,
    RatesHeight_5 = 105,
    Harmonic = 110

  }
  public enum CorridorHeightMethods {
    ByMA = 0,
    ByPriceAvg = 1,
    ByStDevH = 20,
    ByStDevP = 21,
    ByStDevPUD = 22,
    ByStDevHP = 23,
    ByStDevMin = 30,
    ByStDevMin2 = 31,
    ByStDevMax = 40
  }
  public enum TurnOffFunctions {
    Void = -1,
    WaveShortLeft = 0,
    WaveShortAndLeft = 10,
    WaveHeight = 20,
    Correlation = 30,
    Variance = 31,
    InMiddle_4 = 50,
    InMiddle_5 = 51,
    InMiddle_6 = 52,
    InMiddle_7 = 53,
    CrossCount = 60
  }
  public enum ExitFunctions {
    Void = -1,
    GrossTP = 4,
    Wavelette = 5,
    JumpOut = 6,
    Limit = 7,
    Friday = 8,
    Harmonic = 9,
    CorrTouch = 10
  }
  public enum MedianFunctions {
    Void = -1,
    WaveShort = 0,
    WaveTrade = 1,
    Density = 2,
    WaveStart = 20,
    WaveStart1 = 21,
    Regression = 30,
    Regression1 = 31
  }
  public enum VarainceFunctions {
    Zero = -1,
    Price = 0,
    Hight = 10,
    Max = 20,
    Min = 30,
    Min2 = 31,
    Sum = 40,
    Wave = 50,
    Rates3 = 60,
    Rates2 = 61,
    Rates = 62,
    Rates4 = 63,
    StDevSqrt = 70
  }
  public enum Freezing { None = 0, Freez = 1, Float = 2 }
  public enum CorridorCalculationMethod { Height = 1, Price = 2, HeightUD = 3, Minimum = 4, Maximum = 5, PriceAverage = 6 }
  [Flags]
  public enum LevelType { CenterOfMass = 1, Magnet = 2, CoM_Magnet = CenterOfMass | Magnet }
  [Flags]
  public enum Strategies {
    None = 0,
    Auto = 1,
    Hot = 2,
    Universal = Hot * 2, UniversalA = Universal + Auto
  }
  public enum MovingAverageValues { PriceAverage = 0, Volume = 1, PriceSpread = 2, PriceMove = 3 }
  public enum TradeCrossMethod {
    PriceCurr = -1,
    PriceAvg = 0,
    PriceCMA = 1,
    ChartAskBid = 2,
    PriceAvg1 = 10,
  }
  public enum CorridorHighLowMethod { AskHighBidLow = 0, Average = 1, BidHighAskLow = 2, BidLowAskHigh = 3, AskLowBidHigh = 4, PriceMA = 8 }
  public enum ChartHighLowMethod { AskBidByReg = 0, Average = 1,AskBidByMA = 2,Trima = 3 }
  public enum MovingAverageType { Cma = 0, Trima = 1, Regression = 2, RegressByMA = 3, FFT = 4 }

}
