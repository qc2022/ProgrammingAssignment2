## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# function that creates the special "matrix" with cached inverse
# i: cache that stores the inverse
# set: sets the value of the matrix
# get: gets the value of the matrix
# setinv: assigns the inverse to i
# getinv: read value of i
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
