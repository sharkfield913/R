a<-25:150
condi<-a<100&a%%3==0
sum(condi)

a<-c('good','great','bad','okay','good','bad','good')
f<-factor(a)
levels(f)

a <- c(76000, 52000, 36000)
names(a) <- c('shoes', 'pants', 'tshirt')
b <- a[c(1)]
b1 <- b*0.95
c <- a[c(2)]
c1 <- c*0.9
d <- a[c(3)]
d1 <- d*0.95
a
e<-c(b1,c1,d1)
e
sum(b1, c1, d1)

smartphone<-list(model="iphone_se",
                 capacity=c(64,128,256),
                 display='Retina',
                 color=c('black','red','white'))
a<-smartphone$color
a

weight<-c(56,23,89,46,76,14,97,72,68,62,35)
names(weight)<-c('a','b','c','d','e','f','g','h','i','j','k')
weight
a <- sum(weight)-600
a
min(weight[weight>=a])

person<-c('여름','봄','여름','겨울','봄','겨울','여름','여름','봄','가을')
favorite<-factor(person)
levels(favorite)

post<-list(user_id='mr_steve',
number='p11010',
View=37,
image=FALSE,
like=c('creeper','alex','skeleton','enderman'))
post


account <- list(name = '하늘', number = 123-468-120566, balance = 4128750, history = c(-50000, +20000, -32500, -79000, +42000))
a <- c(account$history[account$history>0])
b <- c(account$history[account$history<0])
length(a)
length(b)

point <- c(7, 7, 8, 8, 9, 10, 10, 10, 11, 20)
answer_sheet <- c(1, 3, 2, 2, 4, 1, 5, 2, 3, 1)
mark <- c(1, 3, 1, 2, 4, 2, 5 ,2, 5, 1)
a <- point[answer_sheet == mark]
length(a)
sum(a)
point[point>= 9 & point<=11]<- 10
point
sum(point)

grade <- c(1, 2, 3, 3, 2, 6, 6, 6, 5, 5)
a1 <- factor(grade)
a1
levels(a1)
grade[6] <- 9
grade

book <- list(theme = '바람과 함께 나타나다', athor = '심훈', price = 30000, vendor =c('한국문고', '가야서점', '갈책밤'))
book
book$athor
book$vendor[2]