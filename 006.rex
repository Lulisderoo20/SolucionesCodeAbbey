roundData <- function(str) {
  lines <- strsplit(str, "\n")[[1]]
  n <- as.integer(lines[1])
  
  results <- vector(mode = "integer", length = n)
  for (i in 1:n) {
    elements <- strsplit(lines[i + 1], " ")[[1]]
    num <- as.integer(elements[1])
    den <- as.integer(elements[2])
    
    result <- round(num / den)
    results[i] <- result
  }
  
  cat(paste(results, collapse = " "), "\n")
}

input <- "3\n12 8\n11 -3\n400 5"
roundData(input)
