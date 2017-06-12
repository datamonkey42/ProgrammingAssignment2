## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makes a cache of a matrix (x), use set and get to returns values
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL

  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
}


## Write a short comment describing this function
## check the cache, the pull a copy or force a compute
##if they are identical we can then compute solve( data ) 
##otherwise we just return the value as we have it cached
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$get()
 if ( identical(x,m) ){
   data <- x$get()
   m <- solve(data)
 }
 else { return(m) }
 m
}
