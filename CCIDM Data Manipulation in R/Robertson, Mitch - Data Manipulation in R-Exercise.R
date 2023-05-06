library(dplyr)
head(mtcars)
df <- mtcars
df1 <- mtcars
df1 <-  mtcars[mtcars$cyl==6,]
df1 <- df1[df$mpg > 20,]
df1 #1
df2 <- mtcars
arrange(df,cyl) #2
arrange(df, desc(wt)) #3
select(df, c('mpg','hp')) #4
select(df, c('gear'))
distinct(select(df,gear)) #5
Performance <- df$hp/ df$wt
Performance <- as.data.frame(Performance)
df2 <- data.frame(df2,Performance) #6
df2 %>% summarize(Avg_mpg = mean(mpg)) #7
std_mpg <- df2 %>% filter(cyl == 6) %>% summarize(Avg_mpg = mean(mpg)) #8

