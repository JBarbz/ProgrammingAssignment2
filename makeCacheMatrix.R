## Name: makeCacheMatrix. 
## The input parameter for this function is a matrix. 
## The output of this function consists of a list with three elements. 
## 1st element is a function to cache the matrix in case it is not already cached. 
## 2nd element is a function that echoes the cache matrix
## 3rd element provides the function to get the inverse matrix either from 
## the cache or from direct computation depending on whether the matrix has 
## already been cached or not. 

makeCacheMatrix <- function (x=matrix()) {
	if (!exists("p",envir=my.env,inherit=FALSE)){
	    assign("p",matrix(c(1,0,0,1),nrow=2),envir=my.env)
	    assign("q",matrix(c(1,0,0,1),nrow=2),envir=my.env)
	 }
	
	## Function to cache the matrix and its inverse in the new env't
	set <- function (x) {
	    assign("p",x,envir=my.env) 
	    assign("q",solve(x),envir=my.env)
	}

	## Function to expose the matrix and its inverse from cache - new env't
	getMatrix <- function () get("p",envir=my.env)
	getInvMatrix <- function () get("q", envir=my.env)

	## Here is the list to provide the entire function output (return)
	list(set = set, getMatrix = getMatrix,
	getInvMatrix = getInvMatrix)
}
