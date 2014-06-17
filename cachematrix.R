## These two functions provide a way to calculate the inverse of a square matrix
## and so that this does not need to be calculated, there is the method to store
## the result of this in cache


## This function extends matrix and adds a list containing the methods to
## get and set the inverse and the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
        #getters/setters
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        
        #list to provide functionality
        list(set = set, get = get, 
             setInverse = setInverse, getInverse = getInverse)
}


## This function solves the matrix, to save recalculating it checks first
## to see if the inverse is stored in the cache.

cacheSolve <- function(x, ...) {
        inversedMatrix <- x$getInverse()
        
        #check to see if the inverse exists
        if(!is.null(inversedMatrix)){
            return(inversedMatrix)
        }
        
        #calculate the inverse and store
        data <- x$get()
        inversedMatrix <- solve(data, ...)
        x$setInverse(inversedMatrix)
        inversedMatrix
}
