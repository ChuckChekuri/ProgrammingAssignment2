## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

