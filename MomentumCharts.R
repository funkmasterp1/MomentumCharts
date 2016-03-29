library(quantmod)

getSymbols("BABA",src="yahoo")


chartSeries(BABA, type = c("candlesticks"), subset='last 2 years', theme=chartTheme('white', up.col='green',dn.col='red'))
#q.model = specifyModel(Next(OpCl(GOOGL)) ~ Lag(OpHi(GOOGL),0:3))
#buildModel(q.model,method = 'lm',training.per=c(2009-08-01','2009-09-01))

#ADD SIMPLE MOVING AVERAGE
addSMA(n = 10, on = 1, with.col = Cl, overlay = TRUE, col = "brown")

#morning average convergance divergence
addMACD()

#Bollinger Bands
addBBands(n=20, sd=2, maType="SMA", draw='bands', on=-1)

#Exponential Moving Average
addEMA(n=10,wilder = FALSE, ratio = NULL, on=1, with.col = CL)

#Rate of Change
addROC(n=1,type=c("discrete","continuous"),col="red")

#Parabolic Stop and Reversal to Chart
addSAR(accel = c(0.02, 0.2), col = "blue")

addSMI(n=13,slow=25,fast=2,signal=9,ma.type="EMA")

#William's Percent R Indiator
addWPR(n=14)


addADX(n= 14, maType = "EMA", wilder=TRUE)

addCMF(GXC)
addEnvelope(n = 20, p = 2.5, maType = "SMA")

summary(GXC)
