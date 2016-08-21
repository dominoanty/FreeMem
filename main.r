#Read free memory data from local o/p
csv.data <- read.csv("/home/domino/TSA/FreeMem/data/mem_data.dat", 
                     header=FALSE)

#Uncomment below line to data dump
#write.csv(csv.data)

#Graph plot
y1 <- csv.data$V1
y2 <- csv.data$V2
x <- csv.data$V3
ylabel <- "Free Memory"
xlabel <- "Timestamp"

plot(x, y1, ylim=range(c(y1,y2)), xlab=xlabel, ylab=ylabel, pch=2, cex=0.1,col=17)
lines(x, y1, type="l",col=17)
par(new=TRUE)
plot(x, y2,ylim=range(c(y1,y2)), axes=FALSE,col=10,pch=2, xlab="", ylab="", cex=0.1)



