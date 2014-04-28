
## This function returns a list of 4 functions which have following description
## set() sets the value of matrix
## get() gets the value of matrix
## setinverse() sets the inverse of matrix
## getinverse() gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
      im <- NULL                      ##intiates inverse matrix to NULL
      set <- function(y){
          x<<- y
          m<<- NULL
      }
      
      get <- function () x
      setinverse <- function(inverse) im <<- inverse
      getinverse <- function() im
      list(set = set, get = get, setinverse = setinverse,
           getinverse = getinverse)

}


## This function calculates the inverse of a matrix. It first checks for an already calcualted inverse, if there is
## an already calculated inverse it returns that otherwise it calculates the inverse and sets inverse using setinverse() function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      im <- x$getinverse()
      if(!is.null(im)){
            message("getting cached data")
            return(im)
      }
      data <- x$get()
      im <- solve(data,...)
      x$setinverse(im)
      im
}
