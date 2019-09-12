# See where the working directory goes for Github, to make sure it is locted the same place on your computer
getwd()
# This can be changed bte ;-) no worries

# read.table can do somethings …? (look at the help window)
?read.table()
# there is the same function specific to read.csv

# the file should be in the very same folder as the R file ya dummy :-)
niceframe <- read.csv("NEW_CogSciPersonalityTest2019.csv")

# dette er ikke en del af opgaven haha:
# What cola did i prefer*? and how does it compare to the majority?
##niceframe[57,26]
##niceframe[,26] <- cola
##hist(cola)

# install.packages("pacman") # if the package is already installed, you never have to install it again
# to avoid getting an annoying warning everytime you run, just install something from the console
# i commented it out now :-)
library(pacman)
# this one you will have to run in every file you want to use it in ;-*

pacman::p_load(tidyverse)
# ALTERNATIVELY : This line checks if you already have something installed, and if you don't, it will install it :-D

# if you want to find everyone with shoesize 40
shoes40 <- filter(niceframe, shoesize == 40)
bigfoot_data <- filter(niceframe, niceframe$shoesize >= 45)




# EXCERCISE 1
# 1
shoes39_or_bigger <- filter(niceframe, shoesize >=39)
shoes39_or_bigger
# is there a way to just print the names of the observations?

# 2
able_floor <- filter(niceframe, touch_floor == "Yes" | touch_floor == "Yes, of course!!")
# there are also other ways to do this (Anitas example did this)

# 3
mean(niceframe[,14])
mean_hold <- mean(niceframe[,14])
great_lungs <- filter(niceframe, breath_hold > mean_hold)

# 4
# for this one, I will try to make two subgroups to make this group of. 13 or above, and 60 and below. then find the overlap between the two groups.
# or can we use <> ? or <13, >60 ? s
medium_balance <- filter(niceframe, balloon_balance >13, balloon_balance <60)

# 5
##super_human <- filter(niceframe, shoesize >=39 & touch_floor == "Yes" | touch_floor == "Yes, of course!!" & breath_hold > mean_hold & balloon_balance >13, balloon_balance <60)
# but is there a shorter way to do it?
# also, why did i get 15 sumerhumans, when only 11 people had medium balance?????
# tip from Anita: you might get some that don't satisfy all conditions. 
print(super_human)
# aaah the sollution was commas, and not &'s
super_human <- filter(niceframe, shoesize >=39 , touch_floor == "Yes" | touch_floor == "Yes, of course!!" , breath_hold > mean_hold , balloon_balance >13, balloon_balance <60)

# Success!




#excersises 2 + 3 at home <333333
#stop at mutate

