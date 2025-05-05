x <-c(120,122,125,115,121) #this is the dataset for calculating mean
y <-c(130,128,135,132,129) #this is the dataset for calculating mean.
xm<-mean(x) #mean of x 
ym<-mean(y) #mean of y
print(paste("this is the mean of the data x: ", xm))
print(paste("this is the mean of the data y: ", ym))
sd(x) #standard deviation of x
sd1<-sd(x)
print(paste("this is the standard deviation of the data x: ", sd1))
sd(y) #standard deviation of y
sd2<-sd(y)
print(paste("This is the standard deviation of the data", sd2))
mean(x)-mean(y) #difference of mean 
d<- mean(x)-mean(y) 
print(paste("this is the difference of mean of data x and data y", d))
sqrt(sd1^2/5+sd2^2/5) #square of standard deviation 
d1<-sqrt(sd1^2/5+sd2^2/5)
print(paste("this is the square root of the standard deviation of data x and data y", d1))
d/d1 #t-test formula
print(paste("this is the formula for t-test",d/d1))
