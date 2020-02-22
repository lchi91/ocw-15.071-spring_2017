# Title     : TODO
# Objective : TODO
# Created by: chi
# Created on: 2/22/20

IBM = read.csv("unit-1/datasets/IBMStock.csv")
str(IBM)

IBM$Date = as.Date(IBM$Date, "%m/%d/%y")

str(IBM)

plot(IBM$Date, IBM$StockPrice, type = "l", col = "red")
abline(h = 1, v = 0)