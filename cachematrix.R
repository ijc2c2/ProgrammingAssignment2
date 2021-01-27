## Put comments here that give an overall description of what your
## functions do

## These functions compute and cache the inverse of a matrix for easy 
## retrieval.

## Write a short comment describing this function

## This function solves for the inverse of a matrix and caches it.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
      x <<- y
      m <<- NULL
  }
  get <- function() x 
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse )
}


## Write a short comment describing this function

## This function checks to see whether the matrix inverse has already
## been cached. If it has, it just returns the cached inverse. Otherwise,
## the function computes and caches the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
      message("getting cached data")
      return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}

# makeVector <- function(x = numeric()) {
#   m <- NULL
#   set <- function(y) {
#     x <<- y
#     m <<- NULL
#   }
#   get <- function() x
#   setmean <- function(mean) m <<- mean
#   getmean <- function() m
#   list(set = set, get = get,
#        setmean = setmean,
#        getmean = getmean)
# }
# 
# cachemean <- function(x, ...) {
#   m <- x$getmean()
#   if(!is.null(m)) {
#     message("getting cached data")
#     return(m)
#   }
#   data <- x$get()
#   m <- mean(data, ...)
#   x$setmean(m)
#   m
# }
