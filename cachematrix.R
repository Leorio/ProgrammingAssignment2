## The pair of functions makecachematrix() and cachesolve() cache the inverse of a matrix.
## Instructional example: to calculate the inverse of the matrix exampleMatrix, do 
## cacheMatrix <- makeCacheMatrix(exampleMatrix)
## invExampleMatrix<-cacheSolve(cacheMatrix)


## makeCacheMatrix requires as input a numerical matrix
## and gives as output a special matrix object of the type makeCacheMatrix
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}

## CacheSolve requires as input a 'makeCacheMatrix' and gives as output the inverse.
## If the inverse has already been calculated and the matrix has not changed, then
## `cacheSolve` retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
