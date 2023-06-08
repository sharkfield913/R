
#1-1
library(treemap)
st<-data.frame(state.x77)
st<-data.frame(st,stname=rownames(st))

treemap(st,index = c('stname'),
        vSize = 'Life.Exp',
        vColor = 'Murder',type = 'value',
        title = "살인범죄율")
#1-2
library(treemap)
st<-data.frame(state.x77)
st<-data.frame(st,stname=rownames(st))

treemap(st,index = c('stname'),
        vSize = 'Life.Exp',
        vColor = 'Murder',type = 'value',
        title = "살인범죄율")

