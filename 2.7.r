normality_by <- function(df) {
  library(dplyr)
  namesss <- names(df)
  names(df) <- c('x', 'y', 'z')
  df$y <- factor(df$y)
  df$z <- factor(df$z)
  df <- group_by(df, y, z)
  s <- summarise(df,
                 p_value = shapiro.test(x)$p.value)
  names(s) <- c(namesss[2], namesss[3], 'p_value')
  return(s)
}