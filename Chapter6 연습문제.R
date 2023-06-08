library(svDialogs)
height<-dlgInput('Input height')$res
base<-dlgInput('Input base')$res
height<-as.numeric(height)
base<-as.numeric(base)
area<-height*base*0.5
cat(area)

result<-read.table('ds_tab.txt',header = F,sep = '\t')

ds<-read.table('ds.txt',header = F,sep = '')
write.csv(ds,'ds.csv',row.names = F)

library(xlsx)
write.xlsx(iris,'iris.xlsx',row.names=F)
test<-read.xlsx('iris.xlsx',header=T,sheetIndex=1)
test

library(svDialogs)
sink('log.txt')
cat('---- x * y ----\n')
sink()
x<-as.numeric(dlgInput('Input x')$res)
y<-as.numeric(dlgInput('Input y')$res)
sink('log.txt')
cat('x=',x,'y=',y,'result=',x*y)
sink( )
