oddcount <- function(x)
{
  k <- 0
  for(i in x) {
    if (i %% 2 == 1) k <- k+1
  }
}

t <- c(1,3,8,8,21,11,2)

print(oddcount(t))

