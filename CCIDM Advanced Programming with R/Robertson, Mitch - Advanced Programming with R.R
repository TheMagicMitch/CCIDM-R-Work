#Built in R Features
seq(0, 100, by = 3)
v <- c(1,4,6,7,2,13,2)
sort(v)
sort(v,decreasing = TRUE)
v2 <- c(1,2,3,4,5)
rev(v2)
str(v)
append(v,v2)
sort(append(v,v2))
v <- c(1,2,3)
is.vector(v)
is.list(v)
as.list(v)
as.matrix(v)
#apply
help(lapply)
sample(x = 1:10,1)
v <- c(1,2,3,4,5)

addrand <- function(x){

  ran <-sample(x=1:10,1)

  return(x+ran)
}

lapply(v,addrand)
v
lapply(v, function(a){a+sample(x=1:10,1)})
lapply(v,function(x){x+2})
add_choice <- function(num,choice){
  return(num+choice)
}

add_choice(2,3)
add_choice <- function(num,choice){
  return(num+choice)
}

add_choice(2,3)
lapply(v,add_choice)
lapply(v,add_choice,choice=10)
help(sapply)
sapply(v,add_choice,choice=10)
lapp <- lapply(v,add_choice,choice=10)
sapp <- sapply(v,add_choice,choice=10)

class(lapp)
class(sapp)
even <- function(x) {
  return(x[(x %% 2 == 0)])
}

nums <- c(1,2,3,4,5)

sapply(nums,even)
lapply(nums,even)
#math functions in R
v <- c(-1,0,1,2,3,4,5)
abs(-2)
abs(v)
sum(v)
mean(v)
round(23.1231)
round(23.1231234,2)
#regular expressions
text <- "Hi there, do you know who you are voting for?"
grepl('voting',text)
grepl('Hi',text)
grepl('Sammy',text)
v <- c('a','b','c','d')
grep('a',v)
grep('c',v)
#timestamps
Sys.Date()
today <- Sys.Date()
today
as.Date('1990-11-03')
as.Date("Nov-03-90",format="%b-%d-%y")
as.Date("November-03-1990",format="%B-%d-%Y")
help(strptime)
as.POSIXct("11:02:03",format="%H:%M:%S")
as.POSIXct("November-03-1990 11:02:03",format="%B-%d-%Y %H:%M:%S")
strptime("11:02:03",format="%H:%M:%S")
#done