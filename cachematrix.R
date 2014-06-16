## these two functions will provide a way to calculate the inverse of a square
## matrix and store the results in cache so that it doesn't have to be
## calculated again


## This function creates a list to get and set the inverse and the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set, get = get, 
             setInverse = setInverse, getInverse = getInverse)
}


## This function checks to see if the cache contains the inverse of x, 
## if it does not then it is calculated and stored

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
