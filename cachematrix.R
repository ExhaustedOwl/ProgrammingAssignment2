## Function initialisess the objects
## Function provides the "getters" and "setters"
## Function creates a new object by returning a list()

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- functino(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        set_inverse <- function(inverse) inv <<- inverse
        get_inverse <- function() inv
        list(set = set, get = get,
             set_inverse = set_inverse,
             get_inverse = get_inverse)
}


## Function checks whether inverse exists
## If not, function calculates the inverse from the matrix and inputs the result back to the parent env

cacheSolve <- function(x, ...) {
        inv <- x$get_inverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$set_inverse(inv)
        inv
}
