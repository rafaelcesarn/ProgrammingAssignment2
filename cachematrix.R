## Put comments here that give an overall description of what your
## functions do
## Functions to do what the programming assingment in week 3 demands

## Write a short comment describing this function
## Function that creates a matrix that can be stored in cache with its inverse

makeCacheMatrix <- function(x = matrix())
{
     Inverse <- NULL
     setmatrix <- function(y)
     {
          x <<- y
          Inverse <<- NULL
     }
     getmatrix <- function() x
     setinverse <- function(MatrixInverse) Inverse <<- MatrixInverse
     getinverse <- function() Inverse
     list(setmatrix=setmatrix,
          getmatrix=getmatrix,
          setinverse=setinverse,
          getinverse=getinverse
     )
}


## Write a short comment describing this function
## Funcion to compute the inverse of a matrix and put it in the cache

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     if(!is.null(x$getinverse()))
     {
          return(x$getinverse())
     }
     MatrixInverse <- solve(x$getmatrix())
     x$setinverse(MatrixInverse)
     MatrixInverse
}
