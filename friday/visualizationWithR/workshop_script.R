## Title: Data Visualization with R
## Authors: Alison Blaine, Nushrat Khan, & Erica Hayes
## Last updated: 05/29/2018
## Contact: ablaine@ncsu.edu


## Step 1. Install the tidyverse package, which is a package of many packages 
#for easier data manipulation in R. You should already have this installed. Skip this step.

#install.packages("tidyverse")


## Step 2. Load the package library. This needs to be done in every R session that you want to use it. 

library(tidyverse)


## Step 3. Get data in. 

# First, set your working directory to the folder that contains the dataset. 
#In the Files tab, click "More" and "Set As Working Directory"

getwd() # Use this function to verify that your working directory is correct.

# Now read in the data. 

libdata <- read_csv("data.csv")

libdata


## Step 4. Look at the first 6 rows of the data set 'libdata'. 

head(libdata) 

## Now try the command but with 10 rows (add the number 10 after the comma)

head(libdata,   ) # See 10 rows


## Step 5. Let's create a line chart of the costs of collection types over time.

# We're going to create a chart using the ggplot() function.

ggplot() # The ggplot function creates an empty chart object. It needs information to actually create a graph.

?ggplot()

# Let's add dataset information and assign and aesthetic properties (x, y and color) 
#inside the ggplot() function. 

ggplot(data =libdata, aes(x=time, y=cost, col=collection_type))


# Almost there. But nothing in the graph yet! Add the geom_line() function at the end 
# to tell R you want a line chart.

ggplot(data =libdata, aes(x=time, y=cost, col=collection_type)) + geom_line()


## Step 6. Apply what you have learned. Create a line chart showing number of users over time. 
# Set the following properties: data=libdata, x=time, y=users, col=collection_type 

ggplot(data=   , aes(x=    , y=    , col=     )) + geom_line()


## Step 7. It was hard to do comparisons in the previous chart because there were so many lines. 
# Use the facet_wrap() function to create subplots based on collection type. Add the facet_wrap() function on to the end.

ggplot(data =libdata, aes(x=time, y=users, col=collection_type)) + 
  geom_line() + facet_wrap(~collection_type)


## Step 8. Apply what you have learned. Use the facet_wrap() function to create 
# subplots looking at cost over time, faceted by collection_type. 
# Set x=time, y=cost, col=collection_type and facet_wrap(~collection_type). Use Step 7 as your example.

ggplot(data =    , aes(x = , y = , col =   )) + geom_line() + facet_wrap(   )


####### Section 2. Filtering, Graphing and Saving #######

## Step 9. Now let's make a make a chart looking at just the JOURNALS data. We will need to filter libdata.
## Create a new data subset using filter(). Save it to the "journals" variable.

journals <- filter(libdata, collection_type == "Print Journals" | collection_type == "Online Journals")

journals  # See what's in the journals data frame by printing it to the console.


## Step 10. Draw a line plot using the journals dataset looking at cost over time. 
# Fill in the blank with the correct data set name (journals). 
# Set x=time, y=cost and col=collection_type.

ggplot(data =      , aes(x=   , y=    , col=       )) + geom_line()


## Step 11. Change the theme of this chart using the theme_minimal() function.

ggplot(data = journals , aes(x=time, y=cost, col=collection_type)) + 
  geom_line() + theme_minimal()


## Your turn. Now change the theme to theme_classic() function. 

ggplot(data = journals , aes(x=time, y=cost, col=collection_type)) + 
  geom_line() + 


## Step 12. Let's add a title to this chart using the labs() function. Give it whatever title you want.

my_title <- "PUT YOUR TITLE HERE"

ggplot(data = journals , aes(x=time, y=cost, col=collection_type)) + geom_line() + 
  theme_classic() + labs(title=my_title)


## Step 13. Let's fix that legend title to "Journal type". 
# Add color="Journal type" inside of labs(). 

ggplot(data = journals , aes(x=time, y=cost, col=collection_type)) + geom_line() +
  theme_classic() + labs(title=my_title, color="         ")


## Step 14. Let's fix that x-axis using the scale_x_continuous() function.
# Add 2015, 2016, 2017 inside of scale_x_continuous(breaks= c(       ))

ggplot(data = journals , aes(x=time, y=cost, col=collection_type)) + geom_line() + 
  theme_classic() + labs(title=my_title, color="Journal type") + 
  scale_x_continuous(breaks= c(           ))

?scale_x_continuous() # learn more about this function.


## Step 15. Save the chart to a variable named "journals_chart"

journals_chart <- ggplot(data = journals , aes(x=time, y=cost, col=collection_type)) + geom_line() + 
  theme_classic() + labs(title=my_title, color="Journal type") + 
  scale_x_continuous(breaks= c(2015, 2016, 2017))


journals_chart # print the chart you saved to the plots window


## Step 16. Use ggsave() to export your chart as an image file.

# First specify your image file name. It will save to your current working directory.

image_filename <- "journals.png"

# Now save your image using the ggsave() function. 

ggsave(image_filename, plot= journals_chart, width=4, height=3)

?ggsave()  # Learn more about the ggsave() function.


####### Section 3. Bar Charts #######

## Step 17. Create a bar chart to compare total cost per collection type.

?geom_bar()

# we will use geom_col() for our bar chart

ggplot(libdata, aes(x=collection_type, y=cost)) + geom_col()


## Step 18. Let's flip that chart so the bars are horizonta using the coord_flip() function.

ggplot(libdata, aes(x=collection_type, y=cost)) + geom_col() + coord_flip()


## Step 19. Order the bars from greatest to least. 

# BUT FIRST: Before we can order the bars, we first we need to know what a factor is in R. A factor is an 
# something that takes categories and turns them into ordered levels, like first, second, and third. 

original_medals <- c("gold", "silver", "gold", "bronze", "gold", "bronze")

original_medals 

medals <- factor(original_medals) #turn medals into a factor

medals 

# The problem here is that the order of medals is not the order we want. It's currently alphabetical. 
# We need to change the order to "gold, silver, and bronze"

medals <- factor(original_medals, levels= c("bronze", "silver", "gold"), ordered=TRUE)

medals

# Let's get back to that bar chart. We want to make collection_type a factor, ordered by cost.

# i. Make collection_type an ordered categorical variable (factor). The default order is alphabetical.

type <- factor(libdata$collection_type)

type

# ii. Re-order collection type variable based on cost (greatest to least). 

?fct_reorder()

type_by_cost <- fct_reorder(type, libdata$cost) #orders collection types by cost.

type_by_cost 

# iii. Draw the chart.

ggplot(libdata, aes(x=        , y=         )) + geom_col() + coord_flip() 


## Step 20. Add a title, subtitle and axis labels. 

ggplot(libdata, aes(x=type_by_cost, y=cost)) + geom_col() + 
  coord_flip() + labs(title="Collections Costs By Category", subtitle="Based on data from 2015-2017")


## Step 21. Apply what you have learned. Create a bar chart for number of users by collection type. 
# Set x=collection_type y=users.

ggplot(libdata, aes(x=collection_type, y =      ))  + geom_col()


# Now flip the x and y axes by adding coord_flip() at the end.

ggplot(libdata, aes(x=collection_type, y = users))  + geom_col()


####### Section 4. More Advanced Stuff: Creating a Stacked Bar Chart #######

## Step 22. Let's look at the break down over time on each bar. 
# Use fill=time to create a stacked bar chart.

ggplot(libdata, aes(x=type_by_cost, y=cost, fill=time)) + geom_col() + coord_flip() 


## Step 23. The legend is problematic because time is a continuous variable. 
# We need to turn the time variable into a factor so that the years are discrete and not continuous.
# Put time inside of factor()

ggplot(libdata, aes(x=type_by_cost, y=cost, fill=factor(   ))) + geom_col() + coord_flip() 


## Step 24. It would be nicer to re-order the stacked categories so that 2017 shows up on the end of the bar. 
# Use the group() function and reverse the order of the stacked colors using -time.
# put factor(-time) after group= 

ggplot(libdata, aes(x=type_by_cost, y=cost, group=         , fill=factor(time))) + 
  geom_col() + coord_flip()      


## Step 25. Now add "Year" as the legend title. 
# Use fill="Year" in labs() because it's a stacked bar chart.

ggplot(libdata, aes(x=type_by_cost, y=cost, group=factor(-time), fill=factor(time))) + 
  geom_col() + coord_flip() + labs(fill="    ")   


