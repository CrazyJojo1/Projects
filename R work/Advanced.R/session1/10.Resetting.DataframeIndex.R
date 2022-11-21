

#Resetting the data frame index
#since you removed row 14 and 15, your row index(rownames) are not in sequence.
#It still looks like we have 500 rows, when in fact we have 498 rows

#Unlike Excel, R recognises them as rownames. When you delete them... the rest of the rownames remains as it is

rownames(fin)

nrow(fin)
1 : nrow(fin) #1:498
rownames(fin) <- 1: nrow(fin)
fin

#2nd way to fix the rownames
fin <- fin.backup
fin
fin <- fin[!is.na(fin$Industry),]

rownames(fin) <- NULL #you are resetting the rownames
tail(fin)














