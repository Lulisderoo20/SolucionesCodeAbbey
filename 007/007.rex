fahrenheitToCelsius <- function(str) {
  values <- strsplit(str, " ")[[1]]
  n <- as.integer(values[1])
  
  results <- vector(mode = "integer", length = n)
  for (i in 1:n) {
    fahrenheit <- as.integer(values[i + 1])
    celsius <- round((fahrenheit - 32) * (5 / 9))
    results[i] <- celsius
  }
  
  cat(paste(results, collapse = " "), "\n")
}

input <- "5 495 353 168 -39 22"
fahrenheitToCelsius(input)
