iris$important_cases <- ifelse(1 * (iris$Sepal.Length > mean(iris$Sepal.Length)) + 1 * (iris$Sepal.Width > mean(iris$Sepal.Width)) + 1 * (iris$Petal.Length > mean(iris$Petal.Length)) + 1 * (iris$Petal.Width > mean(iris$Petal.Width)) >= 3, "Yes", "No")

iris$important_cases <- as.factor(iris$important_cases)