#Guide to using dplyr
install.packages('dplyr')
library(dplyr)
install.packages('nycflights13',repos = 'http://cran.us.r-project.org')
library(nycflights13)
summary(flights)
dim(flights)
head(filter(flights,month==11,day==3,carrier=='AA'))
head(flights[flights$month == 11 & flights$day == 3 & flights$carrier == 'AA', ])
slice(flights, 1:10)
head(arrange(flights,year,month,day,air_time))
head(arrange(flights,desc(dep_delay)))
head(select(flights,carrier))
head(rename(flights,airline_car = carrier))
distinct(select(flights,carrier))
head(mutate(flights, new_col = arr_delay-dep_delay))
head(transmute(flights, new_col = arr_delay-dep_delay))
summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE))
sample_n(flights,10)
sample_frac(flights,0.00005)
#Overview of the Pipe Operator %>%
df <- mtcars
library(dplyr)
arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))
library(dplyr)
a <- filter(df,mpg > 20)
b <- sample_n(a,size = 5)
c <- arrange(b,desc(mpg))
c
library(dplyr)
df %>% filter(mpg > 20) %>% sample_n(size = 5) %>% arrange(desc(mpg))
#Guide to using tidyr
install.packages('tidyr',repos = 'http://cran.us.r-project.org')
library(tidyr)
library(data.table)
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)
df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
df
head(df %>% gather(Quarter,Revenue,Qtr1:Qtr4))
head(gather(df,Quarter,Revenue,Qtr1:Qtr4))
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks
stocksm <- stocks %>% gather(stock, price, -time)
stocksm %>% spread(stock, price)
stocksm %>% spread(time, price)
df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))
df
df %>% separate(x, c("ABC", "XYZ"))
head(mtcars)
unite_(mtcars, "vs.am", c("vs","am"),sep = '.')
mtcars %>%
  unite(vs_am, vs, am) %>%
  separate(vs_am, c("vs", "am"))
#done