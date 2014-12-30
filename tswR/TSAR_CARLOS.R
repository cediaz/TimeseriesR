##LibrO TSA: wITH APP IN R##

##cHAPTER 1 INTRODUCTION##


install.packages("TSA")
library(strucchange)
library("TSA")

#Gráfico 1,1
win.graph(width=5, height = 2.5, pointsize=8)
data(larain); plot(larain, ylab='Inches', xlab = 'Year', type = 'o')

#Grf. 1,2
win.graph(width=5, height = 5, pointsize=8)
plot(y=larain, x=zlag(larain), ylab='Inches', xlab = 'Previous year Inches')

#Grf 1,3
win.graph(width = 5, height = 2.5, pointsize = 8)
data(color)
plot(color, ylab = 'Color Property', xlab = 'Batch', type = 'o')

#Grf 1,4
win.graph(width=5, height = 5, pointsize=8)
plot(y=color, x=zlag(color), ylab='Color Property', xlab = 'Previous Batch Color Property')

#Grf 1,5
win.graph(width = 5, height = 2.5, pointsize = 8)
data(hare)
plot(hare, ylab = 'abundance', xlab = 'year', type = 'o')

#Grf 1,6
win.graph(width = 5, height = 5, pointsize = 8)
plot(y = hare, x = zlag(hare), ylab = 'abundance', xlab = 'previous year abundance')

#Grf 1,7
win.graph(width = 5, height = 2.5, pointsize = 8)
data(tempdub); plot(tempdub, ylab = 'Temperature', type = 'o')

#Grf 1,8 -> Oil Filter sales
win.graph(width = 5, height = 2.5, pointsize = 8)
data(oilfilters); plot(oilfilters, ylab = 'Sales', xlab = 'Time', type = 'o')

#Grf 1,9 -> oil filters with month mark
plot(oilfilters, type = 'l', ylab = 'Sales')
points(y=oilfilters, x=time(oilfilters), pch = as.vector(season(oilfilters)))

#1,2 Model Building Strategy:
    
    #1. Model Specification (identification)
    #2. Model fitting
    #3. Model diagnosis

##Exercises Chapter 1##

#Exercise 1,3
x = rnorm(48)
win.graph(width = 5, height = 2.5, pointsize = 8)
plot(x, ylab = 'Serie normal', xlab = 'Periodo de tiempo', type = 'o')


#Exercise 1,4
y = rchisq(48, df = 2)
win.graph(width = 5, height=2.5, pointsize = 8)
plot(y, ylab = 'Serie Chi cuadrado 2df', xlab = 'Periodo de tiempo', type = 'o')

#Exercise 1,5
z = rt(48, df = 5)
win.graph(width = 5, height = 2.5, pointsize = 8)
plot(z, xlab = 'Periodos de tiempo', ylab = 'Serie t student 5df', type = 'o')

win.graph(width = 5, height = 2.5, pointsize = 8)
#ts.plot(x,y,z, gpars=list(xlab="periodo de tiempo", ylab='Series de tiempo diferentes distribuciones', tly = c(1:3)))

#Exercise 1.6
data(tempdub); plot(tempdub, ylab = 'Temperature', type = 'l')
points(y=tempdub, x=time(tempdub), pch=as.vector(season(tempdub)))


#install.packages("strucchange")

