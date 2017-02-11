## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates a cache for the inverted matrix with set/get 
## functions for the matrix and it's inverse and returns the 
## list of functios in an object
makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(m) {
		x <<- m
		i <<- NULL
	}
	get <- function() x
	setinvm <- function(inv_m) i <<- inv_m
	getinvm <- function() i
	list(set = set, get = get,
	     setinvm = setinvm,
	     getinvm = getinvm)
}


## Write a short comment describing this function
## this function must be called with the cachedMatrix 
## created by makeCacheMatrix
## returns the inverse if it's already created otherwise
## creates the inverse and returns it

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	i <- x$getinvm()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinvm(i)
	i
}

