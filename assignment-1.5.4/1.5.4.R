poll = read.csv("unit-1/datasets/AnonymityPoll.csv")
summary(poll)
str(poll)

summary(poll$Smartphone)
str(poll$Smartphone)
table(poll$Smartphone)

table(poll$State, poll$Region == 'Midwest')
table(poll$State, poll$Region == 'South')

SouthInterview = subset(poll, poll$Region == 'South')
sort(table(SouthInterview$State))
which.max(table(SouthInterview$State))

table(poll$Internet.Use, poll$Smartphone)

summary(poll$Internet.Use)
summary(poll$Smartphone)

limited = subset(poll, poll$Internet.Use == 1 | poll$Smartphone == 1)
summary(limited)
mean(poll$Info.On.Internet, na.rm = T)
str(poll$Info.On.Internet)
table(poll$Info.On.Internet)

table(limited$Worry.About.Info)
summary(limited$Worry.About.Info)

table(limited$Anonymity.Possible)
hist(limited$Age)

plot(limited$Age, limited$Info.On.Internet)

max(table(limited$Age, limited$Info.On.Internet))

plot(jitter(limited$Age), jitter(limited$Info.On.Internet))

tapply(limited$Tried.Masking.Identity, limited$Smartphone, mean, na.rm = T)





