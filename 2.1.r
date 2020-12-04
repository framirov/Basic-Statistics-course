get_coefficients <- function(df){
  ans <- glm(data = df, formula = y ~ x, family = binomial())
  return(exp(ans$coefficients))
}