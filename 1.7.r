strres <- function(x){
  ifelse(x %% 3 == 0, 3, x %% 3)
}

max_resid <- function(x){
  ans <- chisq.test(table(x))$stdres
  return(c(rownames(ans)[strres(which.max(ans))], 
           colnames(ans)[as.numeric(which.max(ans) > 3) + 1]))
}