#Project 1 - Food Insecurity - Setup
#source: https://catalog.data.gov/dataset/food-environment-atlas-f4a22

#set WD where rds files are stored
setwd("C:/Users/zacha/Documents/R/RStudio/")

#declare global path for data directory 
path <- c("C:/Users/zacha/Dropbox/Master Data Science/2018 Spring/ANLT 212 - Analytics Computing/Proj1Data/")
files <- list.files(path,pattern=".csv")
filenames <- sub(".csv","",files)

#iterate through all files in directory 
for (f in filenames){
  assign(paste0(f,'.df'), read.csv(paste0(path,f,".csv"),header=TRUE))
  
}


str(access.df)
str(county.df)
str(insecurity.df)
str(price_taxes.df)
str(socioeconomic.df)
str(state.df)
str(stores.df)
str(variablelist.df)

#May need to save .rds files and append to df
#assign(paste0(filenames[1],'.df'), read.csv(paste0(path,filenames[1],".csv"),quote="",header=TRUE, quo ))
#saveRDS(filenames[1],filfile=paste0(filenames[1],".rds"))
#paste0(filenames[1],".df") <- readRDS(paste0(filenames[1],".rds"))




#Obsolete; Too much hard-coding
#access <- read.csv(paste0(path,"access.csv"),quote="",header=TRUE)
#saveRDS(access,file="proj1_access.rds")
#access.df <- readRDS("proj1_access.rds")






