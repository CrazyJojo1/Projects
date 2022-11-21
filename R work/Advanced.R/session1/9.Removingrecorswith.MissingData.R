

#Removing rows that contain missing data
#we may wish to remove data from Industry column
#??
#we will be using Industry column and leaving a missing value will not be good

#Tip: 
#When working with data.... ALWAYS have a backup
#so if anything goes wrong. We can always restore it.

#backup data frame
fin.backup <- fin
#all missing values
fin[!complete.cases(fin),]
#find rows in Industry column that has missing values
fin[is.na(fin$Industry),]
#which rows in fin$Industry have no missing value
fin[!is.na(fin$Industry),]
#now all missing values have gone...... save this subset as your data frame
fin <- fin[!is.na(fin$Industry),]
fin

#note: you have fin.backup as your backup


















