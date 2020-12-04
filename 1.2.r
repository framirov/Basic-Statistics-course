smart_test <- function(df) {
  df <- table(df)
  if (min(df) < 5) {
    return (fisher.test(df)$p.value)
  }
  else {
    return(c(chisq.test(df)$statistic, chisq.test(df)$parameter, chisq.test(df)$p.value))
  }
}