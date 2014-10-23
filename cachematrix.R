## Put comments here that give an overall description of what your
## functions do
# Calculate matrix and its inverse using cache

## Write a short comment describing this function
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inversed matrix
# 4. get the value of the inversed matrix

makeCacheMatrix <- function(x = matrix()) {             #1
        m <- NULL
        set <- function(y) {                            
                x <<- y
                m <<- NULL                              # save in cache
        }
        get <- function() x                             #2
        setinvmatrix <- function(solve) m <<- solve     #3
        getinvmatrix <- function() m                    #4
        list(set = set, get = get,
             setinvmatrix = setinvmatrix,
             getinvmatrix = getinvmatriv)
}

## Write a short comment describing this function

#computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed), 
#then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getinvmartix()                    # query the x matrix's cache
        if(!is.null(m)) {                        # if the inverse has been previously calculated
                message("getting cached data")   # send message 
                return(m)                        # return the cache
        }
        data <- x$get()                          # get the matrix 
        m <- solve(data, ...)                    # calculate the inverse of the matrix
        x$setinvmatrix(m)                        # store the inverse matrix in cache 
        m                                        ## Return a matrix that is the inverse of 'x'
}
