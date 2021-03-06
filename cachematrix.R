## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 'makeCacheMatrix': This function creare a special "matrix" object 
## that can cache its inverse



## makeCacheMatrix <- function(x = matrix(sample(1:100, 3, 3))) {
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL           
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }#2
    get <- function() x 
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}#1


## Write a short comment describing this function
## 'cachesolve': This fuction computes the inverse of the special "matrix"
## returned by 'cacheMatrix' above. If the inverse has already been
## calculated (and the matrix has not changed), then the 'cacheSolve'
## should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }#2
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
}#1


# ## test Matrix for 'makeCacheMatrix' and 'cacheSolve'
# my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
# my_matrix$get()
# my_matrix$getInverse()
# cacheSolve(my_matrix)
# cacheSolve(my_matrix)


