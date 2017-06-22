#####################################
##         PBS R Workshop
##          Feb 18 2016
##    Customizing Graphics in R
##         Brooke Davis
##    Brooke.Davis@dfo-mpo.gc.ca
#####################################


pdf("BoringPlot.pdf")
plot(x=1:10, y=c(1:10), type="l", xlab="X axis", ylab="Y axis", main="Boring Plot", lwd=2, ylim=c(0,100))
lines(x=1:10, y=c(1:10)^2, col="red", lwd=2)
legend( "topleft", lty=c(1,1), lwd=c(2,2), col=c("black","red"), legend= c("x", expression(x^2)), title="Legend")
dev.off()

# What is par?
?par

#########################################################
## Simple multipanel plots

pdf("BoringPlot2.pdf")
par(mfrow=c(1,2))
plot(x=1:10,  y=c(1:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
plot(x=1:10, y=c(1:10)^2, col="red", type="l", lwd=2, xlab="X axis",  ylab="Y axis", main="Boring Plot 2")
dev.off()

pdf("BoringPlot3.pdf")
par(mfrow=c(1,2), oma=c(8,3,8,3))
plot(x=1:10,  y=c(1:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
plot(x=1:10, y=c(1:10)^2, col="red", type="l", lwd=2, xlab="X axis",  ylab="Y axis", main="Boring Plot 2")
dev.off()

pdf("BoringPlot4.pdf")
par(mfrow=c(1,2), oma=c(8,3,8,3), mgp=c(1.5,0.5,0), mar=c(3,2 ,3,1), xpd=FALSE)
plot(x=1:10,  y=c(1:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
plot(x=1:10, y=c(1:10)^2, col="red", type="l", lwd=2, xlab="X axis",  ylab="Y axis", main="Boring Plot 2")
dev.off()

pdf("BoringPlot5.pdf")
par( xpd=FALSE, mar=c(3,3,3,3), oma=c(3,3,3,3), mgp=c(2.5,1,0))
plot(x=1:10,  y=c(1:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
lines(x=1:10, y=c(1:10)^2, col="red", lwd=2)
abline(h=20)
dev.off()

pdf("BoringPlot6.pdf")
par( xpd=TRUE, mar=c(3,3,3,3), oma=c(3,3,3,3), mgp=c(2.5,1,0))
plot(x=1:10,  y=c(1:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
lines(x=1:10, y=c(1:10)^2, col="red", lwd=2)
abline(h=20)
dev.off()

pdf("BoringPlot7.pdf")
par( xpd=NA, mar=c(3,3,3,3), oma=c(3,3,3,3), mgp=c(2.5,1,0))
plot(x=1:10,  y=c(1:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
lines(x=1:10, y=c(1:10)^2, col="red", lwd=2)
abline(h=20)
dev.off()

##########################################
## Axis location

pdf("AxisLoc1.pdf")
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
lines(x=0:10, y=c(0:10)^2, col="red", lwd=2)
points(x=0, y=0, pch=19, col="blue", cex=3)
dev.off()

pdf("AxisLoc2.pdf")
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100), yaxs="i", xaxs="i")
lines(x=0:10, y=c(0:10)^2, col="red", lwd=2)
points(x=0, y=0, pch=19, col="blue", cex=3)
dev.off()

pdf("AxisLoc3.pdf")
par(xpd=TRUE)
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100), yaxs="i", xaxs="i")
lines(x=0:10, y=c(0:10)^2, col="red", lwd=2)
points(x=0, y=0, pch=19, col="blue", cex=3)
dev.off()

pdf("AxisLoc4.pdf")
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2, ylim=c(0,100))
lines(x=0:10, y=c(0:10)^2, col="red", lwd=2)
xx <- par("usr")
points(x=4, y=xx[3], pch=19, col="blue", cex=3)
points(x=xx[1], y=xx[4], pch=19, col="red", cex=3)
dev.off()

########################################################
## advanced multipanel plots using layout()

pdf("Multipanel1.pdf")
mat <- matrix(c(1,2,3,3), nrow=2, ncol=2)
layout(mat=mat, heights=c(50,50,100), widths=c(1,1,1))
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2)
plot(x=0:10, y=c(0:10)^2, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 2" )
plot(x=0:10, y=c(0:10)^3, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 3" )
dev.off()

pdf("Multipanel2.pdf")
mat <- matrix(c(1,2,3,3), nrow=2, ncol=2)
layout(mat=mat, heights=c(50,50,100), widths=c(1,2))
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2)
plot(x=0:10, y=c(0:10)^2, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 2" )
plot(x=0:10, y=c(0:10)^3, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 3" )
dev.off()

pdf("Multipanel3.pdf")
mat <- matrix(c(1,2,3,3, 3, 3), nrow=2, ncol=3)
layout(mat=mat)
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2)
plot(x=0:10, y=c(0:10)^2, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 2" )
plot(x=0:10, y=c(0:10)^3, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 3" )
dev.off()

# add blank space for legend
pdf("Multipanel4.pdf")
mat <- matrix(c(1,1,2,2,3,3,3,4,3,3,3,4), nrow=4, ncol=3)
layout(mat=mat)
plot(x=0:10,  y=c(0:10),  type="l",  xlab="X axis",  ylab="Y axis", main="Boring Plot",  lwd=2)
plot(x=0:10, y=c(0:10)^2, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 2" )
plot(x=0:10, y=c(0:10)^3, type="l", lwd=2,  xlab="X axis",  ylab="Y axis", main="Boring Plot 3" )
plot.new()
legend("center",lty=c(1,1,1), col=c("black", "red", "blue"), 
       legend=c("x", expression(x^2), expression(x^3)), title="Legend", cex=2, xpd=NA)
dev.off()

########################################################
## set up plot from scratch, adding text, axes
pdf("AddingText.pdf")
# Set up figure region
par(mfrow=c(2,1), oma=c(2,2,2,2))
# Set up plotting region
plot(1, type="n", ann=FALSE, axes=FALSE, xlim=c(1,10), ylim=c(1,10) )
# Add Data
points( x=c(1:10), y=c(1:10), type="l")
# Add x-axis
axis(1, at=c(1,5,10))
# Add y-axis with custom tick labels
axis(2, at=c(1,5,10), labels=c("one", "five", "ten"), las=2)
# put a box around the figure
box()
# Note you ca use bty= to customize which type of box you want bty="l" gives only y and x axis
# Add random text on plot
text(x=2,y=8, "This is (2,8)")
# Add x-axis label
mtext(1, text="x-axis", line=2)
# .. and another one further away
mtext(1, text="X-AXIS", line=3)
## Add second plot
plot(1, type="n", ann=FALSE, axes=FALSE, xlim=c(1,10), ylim=c(1,10) )
points( x=c(1:10), y=c(1:10), type="l")
axis(1); axis(2); box()
# play with text in outer margin!
mtext(2, outer=T, text="Y AXIS")
mtext(3, text="TITLE", outer=T)
mtext(3, outer=T, text="adj=1", adj=1)
mtext(3, outer=T, text="adj=0", adj=0)
dev.off()


###############################################
## example plot 
pdf("FancyPlot.pdf")
# This is a custom color palette I used for all the figure in a certain project with 8 sites
cols<-c("#8B0000","#CD6600","#0000FF","#006400","#9932CC","#FF4040","#8B6508","#53868B")
years <- 1963:2013
# The zeros create empty space -- could also control using par(mar()) commands
(mat <- matrix(c(1,0,9,2,0,9,3,0,9,4,0,9,5,0,10,6,0,10,7,0,10,8,0,10), nrow=8, ncol=3, byrow=T))
# you'll want to look at this matrix on its own to see the layout
par(oma=c(12,5,3,2),mar=c(0,0,0,0),xpd=T)
# want zero column to be narrower 
layout(mat=mat,widths=c(1,0.25,1))
for(i in 1:8){
  # just going to simulate data
  dat <- rnorm(51,1000,100)
  ytop<-max(dat)
  ylow<-min(dat)
  # set up plotting area with proper y and x limits
  plot(x=1,y=1,type="n",xlim=c(1963,2013),ylim=c(ylow-50,ytop+50), xaxs="i",yaxs="i", ann=F, axes=F)
  lines(x=years,y=dat,type="l",col=cols[i])
  # for final plot add x-axis and axis label
  # The first data point is outside of the data range just so that the line extends all the way to the left
  if(i==8){
    axis(1,padj=-0.5,at=c(1960,1970,1980,1990,2000,2010))
    mtext(side=1,line=2,text="Year",cex=0.8)
  }
  # add y axes
  axis( 2,at= c(round(ylow,-2),round(ytop, -2)), las=1, hadj=0.6 )
  # add dashed line at mean value
  abline( h=mean(dat), col=cols[i], cex=2, lty=2, xpd=F )
  # for the first plot, add title
  if(i==1){ mtext(side=3,text="Stream Trajectories")}
}
# want to change margins for two right side plots, so that they aren't right next to eachother
par(mar=c(1,0,1,0))
plot(x=1,y=1,type="n", ylim=c(0,1), xlim=c(1,10), xaxs="i",yaxs="i", ann=F,axes=F,xpd=NA)
for(i in 1:8){
  # again, dummy data
  dat <- runif(10,0,1)
  lines(x=1:10, y=sort(dat), col=cols[i])
}
# add axes and labels
axis(2,at=c(0,0.5,1),las=1, hadj=0.6)
axis(1,at=c(0,2,4,6,8,10),labels=T, padj=-0.5)
mtext(side=2,text="Probability",line=1.8,cex=0.8)
mtext(side=3, "Percentile Probability")

# change margins again, for last plot
par(mar=c(0,0,1,0))
plot(x=1,y=1,type="n", ylim=c(0,1),xlim=c(1,10), xaxs="i",yaxs="i", ann=F,axes=F,xpd=NA)
for(i in 1:8){
  dat <- runif(10,0,0.6)
  lines(x=c(1:10),y=sort(dat, decreasing=T),col=cols[i],cex=5)
} 
axis(2,at=c(0,0.5,1),las=1,hadj=0.6)
axis(1,at=c(0,2,4,6,8,10),padj=-0.5)
mtext(side=1,line=2,text="Monitoring Window",cex=0.8)
mtext(side=2,text="Probability",line=1.8,cex=0.8)
mtext(side=2,line=2,text="Peak Counts",outer=T,cex=0.8)
dev.off()

