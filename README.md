ProgrammingAssignment2
======================
Matrix inversion is usually a costly computation and their may be some benefit to caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.

Write the following functions:

makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.

For this assignment, assume that the matrix supplied is always invertible.

I have included in the reporsitory the makeCacheMatrix.R which includes the codes.
        The input parameter for this function is a matrix. 
        The output of this function consists of a list with three elements. 
        1st element is a function to cache the matrix in case it is not already cached. 
        2nd element is a function that echoes the cache matrix
        3rd element provides the function to get the inverse matrix either from 
        the cache or from direct computation depending on whether the matrix has already been cached or not. 

The second R file is the cacheSolve.
        This function takes a matrix. 
        The Input is the matrix whose inverse is the target of output. 
        The output of the function is the inverse of the matrix. 
        The process consists of returning the inverse from the cache if that is valid.
        The function saves computational time bt storing the inverse

        To test the function first please enter the line {
                my.env <- new.env() 
        Create a test matrix
                x <- matrix(c(1,0,2,3,0,-2,1,0,2),nrow=3)
        check x
                        [,1] [,2] [,3]
                [1,]    1    3    1
                [2,]    0    0    0
                [3,]    2   -2    2
        cacheSolve (x)
        run it twice - first time, it should get the computed inverse 
                        [,1]       [,2]        [,3]
                [1,] -0.07317073 -1.6585366  1.46341463
                [2,] -0.02439024  0.7804878 -0.51219512
                [3,]  0.09756098 -0.1219512  0.04878049
        and the second time onwards, it should bring from cache.
        
        R is getting cached data
                            [,1]       [,2]        [,3]
                [1,] -0.07317073 -1.6585366  1.46341463
                [2,] -0.02439024  0.7804878 -0.51219512
                [3,]  0.09756098 -0.1219512  0.04878049
        
        To test the accuracy of the inversion, set y <-cacheSolve(x)
        cacheSolve(y) should yield x 
        }

Thank you.
