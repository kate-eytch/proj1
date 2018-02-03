#Project 1 - Food Insecurity - Cleanup



str(access.df)
#str(county.df)
str(insecurity.df)
#str(price_taxes.df)
#str(socioeconomic.df)
#str(state.df)
#str(stores.df)

######################
#1. remove obsolete columns

str(access.df)
#remove "count" columns; pop. % is better measure than raw count
access.df <- access.df[,-c(4,5,9,10,14,15,19,21,22,26,27,31:44)]


######################
#2. rename columns per readme
colnames(access.df) <- c(c("FIPS","State","County"), gsub(" ",".",gsub(",","",variablelist.df$Variable.Name[variablelist.df$Category.Code == "ACCESS" & variablelist.df$Variable.Code %in% colnames(access.df)])))

colnames(insecurity.df) <- c(c("FIPS","State","County"), gsub(" ",".",gsub(",","",variablelist.df$Variable.Name[variablelist.df$Category.Code == "INSECURITY" & variablelist.df$Variable.Code %in% colnames(insecurity.df)])))


######################
#3. Correct data types & rounding
str(county.df)
county.df$X2010.Census.Population <- as.numeric(county.df$X2010.Census.Population)
county.df$Population.Estimate..2011 <- as.numeric(county.df$Population.Estimate..2011)
county.df$Population.Estimate..2012 <- as.numeric(county.df$Population.Estimate..2012)
county.df$Population.Estimate..2013 <- as.numeric(county.df$Population.Estimate..2013)
county.df$Population.Estimate..2014 <- as.numeric(county.df$Population.Estimate..2014)
county.df$Population.Estimate..2015 <- as.numeric(county.df$Population.Estimate..2015)
county.df$Population.Estimate..2016 <- as.numeric(county.df$Population.Estimate..2016)

#round to two decimal places
access.df[4:19] <- round(access.df[4:19],2)

######################
#4. calculate new interesting columns












# #Convert and append UTC to local time as column in news.df 
# news.df[,"DateTime"] <- format(as.POSIXlt(news.df$Timestamp/1000, origin='1970-01-01'))
# 
# 
# #parse out datetime for more nuanced analysis;
# #factor where relevant
# 
# #extract time from datetime ; 
# news.df[,"Time"] <- format(as.POSIXct(news.df$DateTime, format="%Y-%m-%d %H:%M"), format="%H:%M")
# 
# #extract year
# #news.df[,"Year"] <- year(news.df$DateTime)
# #news.df$Year <- factor(news.df$Year)
# 
# #extract month
# news.df[,"Month"] <-  month(news.df$DateTime)
# news.df$Month <- factor(news.df$Month)
# 
# #extract day
# news.df[,"Day"] <- wday(news.df$DateTime)
# news.df$Day <- factor(news.df$Day)
# 
# #extract hour
# news.df[,"Hour"] <- hour(news.df$DateTime)
# news.df$Hour <- factor(news.df$Hour)




