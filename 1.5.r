get_important_cases <- function(x){
  s <- dim(x)[1]
  l <- dim(x)[2]
  means <- c()
  for(i in 1:l) {
    means[i] <- mean(x[, i])
  }
  cases <- c()
  for(i in 1:s) {
    cases[i] <- ifelse(sum(as.numeric(unlist(x[i, ]) > means)) > (l/2), "Yes", "No")
  }
  x$important_cases <- factor(cases, levels = c("Yes", "No"))
  return(x)
}