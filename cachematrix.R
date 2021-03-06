## A pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

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


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

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
