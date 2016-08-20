glass <- read.csv("~/Homework 2/glass.data", header=FALSE)

colnames(glass) <- c("Id Number","RI","Na","Mg","Al","Si","K","Ca","Ba","Fe","Type of glass")

# creating column "bi"

for (i in 1:214)
{
  if(glass$'Type of glass'[i] <5)
    {
      glass$bi[i] <- 0
    }
  else
    {
    glass$bi[i] <- 1
    }
  i= i+1
  
}

# matrix Fea

# split into training and testing sets
# need to chek accuracy
# first take 80%-20%
check_test$knn.train_fea..test_fea..y_cv.<-data.frame(check_test$knn.train_fea..test_fea..y_cv.)

for (i in 1:43)
{
  if(check_test$knn.train_fea..test_fea..y_cv.[i,] == check_test$a[i,])
  {
    check_test$accuracy[i] <- 1
  }
  else
  {
    check_test$accuracy[i] <- 0
  }
  i= i+1
  
}

sum(check_test$accuracy)/43




# normailozing the feature variables
fea$RI <- (fea$RI - min(fea$RI))/(max(fea$RI)-min(fea$RI))
#fea$Na <- (fea$Na - min(fea$Na))/(max(fea$Na)-min(fea$Na))
#fea$Mg <- (fea$Mg - min(fea$Mg))/(max(fea$Mg)-min(fea$Mg))
#fea$Al <- (fea$Al - min(fea$Al))/(max(fea$Al)-min(fea$Al))
#fea$Si <- (fea$Si - min(fea$Si))/(max(fea$Si)-min(fea$Si))
#fea$K <- (fea$K - min(fea$K))/(max(fea$K)-min(fea$K))
#fea$Ca <- (fea$Ca - min(fea$Ca))/(max(fea$Ca)-min(fea$Ca))
#fea$Ba <- (fea$Ba - min(fea$Ba))/(max(fea$Ba)-min(fea$Ba))
#fea$Fe <- (fea$Fe - min(fea$Fe))/(max(fea$Fe)-min(fea$Fe))




fea$RI <-(fea$RI - min(fea$RI))/(max(fea$RI)-min(fea$RI))



