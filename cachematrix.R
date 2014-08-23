## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    storedMatrix <- x
    
    set <- function(y) {
        storedMatrix <<- y
        inverseMatrix <<- NULL
    }
    
    get <- function() {
        storedMatrix
    }
    
    setInverse <- function(inv) {
        inverseMatrix <<- inv
    }
    
    getInverse <- function() {
        inverseMatrix
    }
    
    list(set = set, 
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

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
