most_significant <-  function(x){
  l <- length(x)
  chis <- 1:l
  for (i in (1:l)) {
    chis[i] <- chisq.test(table(x[,i]))$p.value
  }
  return(colnames(x[chis == min(chis)]))
}