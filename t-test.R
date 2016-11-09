
#http://www.idescat.cat/economia/inec?tc=5&id=0009&dt=201602
library(jsonlite)
library(tseries)
library(forecast)

list<-fromJSON("visual.json")

df<-data.frame(list$data$val)
colnames(df)<-list$data$label
rownames(df)<-list$time
plot(list$time,df$Catalunya,type="l",col="red",xlab="Period", ylab="%PIB")
lines(list$time,df$Espanya,col="green")
legend(names(df))
legend('topleft', names(df), 
       lty=1, col=c('red', 'green'), bty='n', cex=.75)


boxplot(df) # Plotting a box plot
t.test(df$Catalunya,df$Espanya) # t.test() function for t-test





