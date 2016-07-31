#!/usr/bin/Rscript

library(RMySQL)

conn <- dbConnect(MySQL(), dbname = "weibo", username="root", password="1234")
info <- dbGetQuery(conn, "select * from train where uid = 'd38e9bed5d98110dc2489d0d1cac3c2a'")
# print (info)
print (length(info))
print (info[1])
dbDisconnect(conn);

