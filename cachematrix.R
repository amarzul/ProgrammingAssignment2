## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ab <- NULL
        set <- function(y) {
                x <<- y
                ab <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) ab <<- inverse
        getInverse <- function() ab
        list(set = set, get = get, 
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ab < x$getinverse()
        if(!is.null(ab)) {
                message("getting cached data")
                return(ab)
        }
        mat <- x$get()
        ab <- solve(mat, ...)
        x$setInverse(ab)
        ab
}
