stat_mode <- function(x){
  y <- table(x)
  return(as.numeric(names(y[y>= max(y)])))
}