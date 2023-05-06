#1
ex <- read.csv('example.csv')
str(ex)
colnames(ex)
df <- data.frame(ex)
head(df)
help(read.csv)
read.table('example.csv')
read.table(file = 'example.csv', sep = ',')
fread('example.csv')
write.csv(df, file = "foo.csv")
fread('foo.csv')
write.csv(df, file = "foo.csv",row.names = FALSE)
fread('foo.csv')
#2
install.packages('readxl',repos="http://cran.rstudio.com/")\
library(readxl)
excel_sheets('Sample-Sales-Data.xlsx')
df <- read_excel('Sample-Sales-Data.xlsx',sheet='Sheet1')
head(df)
sum(df['Value'])
str(df)
summary(df)
entire_workbook <- lapply(excel_sheets("Sample-Sales-Data.xlsx"), 
                          read_excel, 
                          path = "Sample-Sales-Data.xlsx")
install.packages('xlsx',repos="http://cran.rstudio.com/")
library(xlsx)
df <- data.frame(matrix(1:10))
write.xlsx(df, "output.xlsx")
read_excel('output.xlsx')
#3
install.packages("RODBC") 
library(RODBC)
myconn <-odbcConnect("Database_Name", uid="User_ID", pwd="password")
dat <- sqlFetch(myconn, "Table_Name")
querydat <- sqlQuery(myconn, "SELECT * FROM table")
close(myconn)
#4
demo(package='rvest')
install.packages('rvest')
library(rvest)
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")
lego_movie %>% 
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()
lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
lego_movie %>%
  html_nodes("table") %>%
  .[[3]] %>%
  html_table()
#done