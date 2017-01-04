## Put comments here that give an overall description of what your
## functions do
##These functions are written as a part of coursera week 3, programming assingment.

## Write a short comment describing this function
##This function is used to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL          ## inv holds value of matrix inverse 
  set <- function(y) {           
    x <<- y                             
    inv <<- NULL                        
   }
  get <- function() x   ## returns value of the matrix argument
  setinverse <- function(inverse) inv <<- inverse  ## assigns value of inv 
  getinverse <- function() inv                     ## gets the value of inv 
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)   
                                                                                  
}


## Write a short comment describing this function
## This function computes inverse of a matrix returned by above function. If the inverse is already calculated, it retrieves from the cache

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
