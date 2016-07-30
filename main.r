#Read free memory data from local o/p
csv.data <- read.csv("/home/domino/TSA/FreeMem/data/mem_data.dat", 
                     header=FALSE)

#Uncomment below line to data dump
#write.csv(csv.data)

#Graph plot
y <- csv.data$V1
x <- csv.data$V2
ylabel <- "Free Memory"
xlabel <- "Timestamp"
plot(x, y, xlab=xlabel, ylab=ylabel, pch=1, cex=0.1)
lines(x, y, type="l")


