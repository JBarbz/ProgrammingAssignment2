## Name: cacheSolve 
## This function takes a matrix. 
## The Input is the matrix whose inverse is the target of output. 
## The output of the function is the inverse of the matrix. 
## The process consists of returning the inverse from the cache if that is valid.
## The function saves computational time bt storing the inverse

cacheSolve <- function(x, ...) {
	temlist <- makeCacheMatrix(x)
	tem <- temlist$getMatrix()

	matrixEqv <- is.matrix(tem) && is.matrix(x) && dim(tem) == dim(x) && all(tem == x)
	if (matrixEqv) {
	  	message("R is getting cached data")
 	  	return(temlist$getInvMatrix())
	}
	temlist$set(x)
	return(temlist$getInvMatrix())
	
}
