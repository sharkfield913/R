n<-12
if(n%%2==1){
  type<-'odd'
}else{
  type<-'even'
}
print(type)



ifelse(n<0,res<--n,res<-n)

input<-1:10
n<-length(input)
switch<-TRUE
if(switch==T){
  for(i in 1:n){
    result<-result*i
  }
}else{
  result<-sum(input)
}
print(result)



mul<-1
for(i in 1:20){
  if(i%%2!=0){
    mul<-mul*i
  }
}
print(mul)



mul<-1
i<-1
while (i<=10) {
  mul<-mul*i
  i<-i+2
}
print(mul)


ds<-data.frame(mtcars$mpg,mtcars$hp,mtcars$wt)  
apply(ds,2,mean)


triangle<-function(x,y){
  return((x*y)/2)
}
triangle(5.2,4.6)



multiple.answer<-function(data){
  res.min<-min(data)
  res.max<-max(data)
  res.avg<-mean(data)
  result<-c(result$min,result$max,result$avg)
  return(result)
}
data<-c(1,3,5,7,9)
result<-multiple.answer(data)
cat(result$min,result$max,result$avg)














