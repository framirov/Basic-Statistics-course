get_features <- function(test_data){
  test_data$is_prohibited <- factor(test_data$is_prohibited)
  a <- anova(glm(is_prohibited ~ weight + length + width + type, data = test_data, family = "binomial"), test = "Chisq")$`Pr(>Chi)` < 0.05
  if (sum(a, na.rm = T) > 0){
    return(names(test_data[which(a)]))
  }
  else{
    return("Prediction makes no sense")
  }
}