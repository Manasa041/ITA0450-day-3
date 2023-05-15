read.csv("mpg.csv")


data(mpg,package="ggplot2")
max_city_mpg_row<-which.max(mpg$cty)
mpg[max_city_mpg_row,]

data(mpg,package="ggplot2")
compact_subcompact<-subset(mpg,class%in% c("compact","subcompact"))
max_disp_by_class<-aggregate(disp ~ class,compact_subcompact,max)
max_disp_by_class<-merge(compact_subcompact,max_disp_by_class,by=c("class","disp"))