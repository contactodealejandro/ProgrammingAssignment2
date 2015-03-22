## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## A function that creates a matrix that contains a list
## containing a function to set and get the value of 
## the  matrix and set and get a funciton that inverse
## the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function (x)
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get, 
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

## A funcition that inverse the special matrix created with
## the above funcion. If first checks to see if the matrix has
## already be inverse . If so it get the inverted matriz 
## form cahce and skips the computation. Otherwise, the function
## inverse the matriz and sets the value of the matrix in the
## cache via the setinveres



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getInverse()
         if(!is.null(m)){
                 message("getting cached data")
                 return (m)
         }
         data <- x$get()
         m <- inverse(data, ...)
         x$setinverse(m)
         m
                 
        
}
