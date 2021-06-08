## Put comments here that give an overall description of what your
## functions do

## the function will be used to create a matrix object that will cache its 'inverse'

makeCacheMatrix <- function(x = matrix()) {
  
      inv <- NULL
      set <- function(y) {
        x <<- y
        inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function() {inv}
      ## List
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
      
}


## returns the cache of the above function 

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if(!is.null(inv)) {
        message("getting cache.data")
        return(inv)
        
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
      
}
