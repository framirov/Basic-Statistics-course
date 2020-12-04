smart_anova <- function(df){
  library(dplyr)
  df$y <- as.factor(df$y)
  df <- as_data_frame(df)
  df <- group_by(df, y)
  st <- summarise(df, pvals = shapiro.test(x)$p.value)
  bt <- bartlett.test(data = df, x ~ y)$p.value
  if ((all(st$pvals > 0.05)) & (bt > 0.05)) {
    return(c(ANOVA = summary(aov(formula = x~y, df))[[1]]$'Pr(>F)'[1]))
  }
  else{
    return(c(KW = kruskal.test(x ~ y, df)$p.value))
  }
}