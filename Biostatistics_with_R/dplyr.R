library(dplyr)
#example1: selecting random N rows.
mydata <- read.csv("R_practice_set/sampledata.csv")
mydata
sample_n(mydata,3)
sample(mydata,3)
#example 2 : select random fraction of rows.
sample_frac(mydata,0.1)
#example 3 : remove duplicate rows based on all the variables
x1 = distinct(mydata)
#example 4 remove duplicate rows based on a variable 
x2 =distinct(mydata, Index, .keep_all= TRUE)
#EXAMPLE 5 : REMOVE DUPLICATE ROWS BASED ONM MULTIPLE VALUES
x2 = distinct(mydata, Index, Y2020, .keep_all = TRUE)
#example 6 : SELECTING VARIABLES(OR COLUMNS)
mydata2 = select(mydata, Index, State:Y2008)
#example 7 : Dropping Variables
mydata = select(mydata, -c(Index,State))
mydata = select(mydata, -Index, -State)
mydata
#example 8 : selecting or dropping Variables starts with 'Y'
mydata3 = select(mydata, starts_with("I"))
mydata3
mydata4 = select(mydata, starts_with("Y"))
mydata4
mydata5 = select(mydata, -starts_with("Y"))
mydata5
# example 9 : selecting variable conatining 'I'in their names
mydata6 = select(mydata, contains('I'))
mydata6
# example 10 : reorder variables
mydata7 = select(mydata, Y2008, everything())
mydata7
library(dplyr)
rename(data, mydata1=mydata)
mydata8 = rename(mydata, Index1=Index)
mydata
mydata8 = rename(mydata2, Index1=Index)
mydata8
#example 12 ; filter function
mydata9 = filter(mydata2, Index=="A")
mydata9
mydata10 = filter(mydata2,Index != "A" )
mydata10
#example 13: multiplr selection criteria
mydata11 = filter(mydata2, Index %in% c("A","C", "D"))
mydata11
#example 14: 'AND' CONDITION 
mydata12 = filter(mydata2, Index %in% c('A', "C") & Y2002 >= 1300000)
mydata12                  
#example 15; 'OR' CONDITION
mydata13 = filter(mydata2, Index %in% c("A", "C")| Y2002 >= 1300000)
mydata13
#example 16; 'NOT' CONDITION
mydata14 = filter(mydata2, !Index %in% c("A","C"))
mydata14
#example 17; CONTAINS condition
mydata15 = filter(mydata2, grepl("Ar", State))
mydata15
#summarise function 
summarise(mydata, Y2015_mean = mean(Y2015), Y2015_med = median(Y2015))
#ummarise multiple variables
summarise_at(mydata2, vars(Y2005, Y2006), list(n(), mean, median))
#summarise with custom function
summarise_at(mydata, vars(Y2011, Y2012), list(mean, median), na.rm = TRUE)
summarise_at(mydata, vars(Y2011, Y2012), list(n=~n, missing = sum(is.na(.)), mean(., na.rm = TRUE), median(., na.rm = TRUE)))
summarise_at(mydata2, vars(Y2005, Y2006), list(~n), missing = ~sum(is.na(.)), ~mean(., na.rm = TRUE), ~median(., na.rm = TRUE))
#how to apply Non_Standard Functions
#sorting data by multiple variable
arrange(mydata2, Index, Y2002)
mydata2
#Pipe operator %>%
dt = mydata2 %>% select(Index, State) %>% sample_n(10)
dt






