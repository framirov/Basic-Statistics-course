centered <- function(df, var_names){
  library(dplyr)
  return(mutate_at(df, var_names, funs(. - mean(.))))
}