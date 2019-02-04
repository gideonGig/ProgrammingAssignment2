## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                                             ## function creates a special matrix object
        m <- NULL                            ## initialize m as NULL and will hold the matrix vale
        set <- function(y){                  ## define set function to assign new
                x <<- y                      ## value of matrix in parent environment
                m <<- NULL                   ## if there ia a new matrix, reset to NULL
        }
       get <- function() x
       setInverse <- function(inverse) m <<- inverse
       getInverse <- function() m
       list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) # you can refer to the functions with $ operator

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}






























































