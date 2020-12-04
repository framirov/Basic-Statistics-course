most_suspicious <- function(test_data, data_for_predict){
  test_data$is_prohibited <- factor(test_data$is_prohibited)
  fit <- glm(is_prohibited ~ weight + length + width + type, data = test_data, family = "binomial")
  ch <- predict(fit, data_for_predict)
  prob <- exp(ch) / (exp(ch) + 1)
  return(data_for_predict[which.max(prob),]$passangers)
}