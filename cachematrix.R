## This functions do matrix inversion for large datasets

## This function creates a matrix, gets the value of the matrix and then set and get the value of solve.


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
  
  set <- function(y){
        x <<- y
        m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  matrix(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## this function calls the inversion of the matrix with the special matrix created with the function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)){
              message("getting cached data")
              return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
