normality_test <- function(test){
  a <- test[which(sapply(test, is.numeric))]
  apply(a, 2, function(x) shapiro.test(x)$p.value)
}