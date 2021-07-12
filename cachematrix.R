## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  ### The ability to manage variables at two levels also makes it possible to maintain 
  ### the state across function invocations by allowing a function to modify variables 
  ### in the environment of its parent
  
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}

### aqui hacen una pequeña descripcion de lo que pasa por que tambien tuve algunas dudas 
### Here they make a small description of what happens because I also had some doubts
### https://stackoverflow.com/questions/43093665/on-coursera-r-programming-course-assignment-2-lexical-scoping

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
  
}
