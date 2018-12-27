## Put comments here that give an overall description of what your
## functions do
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
      #setting Null for INVERTED Matrix
      inverse <- NULL
      #defining functions to Set, Get ,setinverse, GetInverse
      setMatrix <- function(y) {
            x <<- y
            inverse <<- NULL
      }
      getMatrix <- function() x
      setinvMatrix <- function(inverseD) inverse <<- inverseD
      getinvMatrix <- function() inverse
      #List of Functions
      list(setMatrix = setMatrix, getMatrix = getMatrix, setinvMatrix = setinvMatrix, getinvMatrix = getinvMatrix)
}	 



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      inverse <- x$getinvMatrix()
      if(!is.null(inverse)){
            message("Retreving cached MAtrix")
            return(inverse)
      }
      Sampledata <- x$getMatrix()
      inverse <- solve(Sampledata)
      x$setinvMatrix(inverse)
      inverse      
}
