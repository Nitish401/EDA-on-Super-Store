#       EDA OF SUPER STORE
library(ggplot2) #data visualization
library(dplyr) #data manipulation

#Importing the Superstore Data
df <- read.csv("C:\\Users\\INTEL\\Desktop\\r project\\SampleSuperstore.csv", header=TRUE,sep=",")

#First 5 Rows of the Data
head(df,3)

#Information of the Superstore Data
str(df)
# 1)The given data set of Super Store has 9994 observation in which there are 13 columns.
# 2)Every observation in the columns data set, datatype is either integer or float.

#Summary Of The Data
summary(df)
# The given data is about the profit made by Super Store across USA
# The Data divided by some categories like State, Region, Category, Sub-Category,Shipment Mode and Segment.
# The data has average sales of $229, minimum Sales of $0.44 and maximum of $22638
# The average quantity of product sold is 1, The minimum quantity of product sold are 4 and maximum are 14.
# The Average discount on the products are 15% in maximum is 80%
# The Average Profit on sale is 28.657, The minimum profit is -6599.978 and maximum is 8399.976

#Visual Representation

#Each Data Representation According To Each Category 
table(df$Ship.Mode)
ggplot(data=df,aes(x=Ship.Mode,fill=Sales))+geom_bar(width=0.5)
#After looking the graph we can say that Maximum Sales is done in Standard Class Ship mode
#And the Minimum Sales is done ship mode is Same Day

table(df$Segment)
ggplot(data=df,aes(x=Segment,fill=Sales))+geom_bar(width = 0.5)
#This graph says that sales is maximum for Individual Consumer and minimum  sales is done by Home Office

table(df$Region)
ggplot(data=df,aes(x=Region,fill=Sales))+geom_bar(width = 0.5)
#As we can see that maximum no.of Sales is done in West Region and Minimum done in South

table(df$Category)
ggplot(data=df,aes(x=Category,fill=Sales))+geom_bar(width = 0.5)
#This represent of sales Office Supplies has maximum of sales and Technology has minimum of Sales

#State-wise Sales Analysis
ggplot(df,aes(x=State,y=Sales,fill=State))+geom_col()+ggtitle("Statewise Analysis of Sales")+
  coord_flip()+theme(legend.position = "None",axis.text.y = element_text(size = 6))
#This Graph says that maximum no.of sales done in California

#Graphical Representation of Profit on each Sub-Category Of The Products
ggplot() + geom_point(data = df, aes(x = Sales, y = Profit, color =Sub.Category))


#Graphical Representation Of Discount on Sales in Shipment Mode
ggplot() + geom_point(data = df, aes(x = Discount, y = Sales, color = Ship.Mode))









