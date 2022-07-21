df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))


WorldCupMatches = read.csv("C:/Users/Owner/Documents/Kettering/4_Senior/UM/Class/Rscripts/WorldCupMatches.csv", header=T)
head(WorldCupMatches)
nrow(WorldCupMatches)
ncol(WorldCupMatches)
summary(WorldCupMatches)
unique(WorldCupMatches$City)
mean(WorldCupMatches$Attendance, na.rm = TRUE)
aggregate(WorldCupMatches$Home.Team.Goals, by=list(WorldCupMatches$Home.Team.Name), FUN=sum)
aggregate(WorldCupMatches$Attendance, by=list(WorldCupMatches$Year), FUN=mean)


Metabolites = read.csv("C:/Users/Owner/Documents/Kettering/4_Senior/UM/Class/Rscripts/metabolite.csv", header=T)
Metabolites %>% count('Alzheimeers')
sum(is.na(Metabolites))
DopamineRemove = Metabolites[is.na(Metabolites['Dopamine'])==F, ]
head(DopamineRemove)
DopamineRemove$c4.OH.Pro[is.na(DopamineRemove$c4.OH.Pro)] <- median(DopamineRemove$c4.OH.Pro, na.rm = TRUE)
head(DopamineRemove)