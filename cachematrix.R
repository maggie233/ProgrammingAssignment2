## Put comments here that give an overall description of what your 
2 ## functions do 
3 
 
4 ## The makeCacheMatrix function creates a special "matrix",  
5 ## which is really a list containing a function to  
6 ## 1. set the value of the matrix  
7 ## 2. get the value of the matrix  
8 ## 3. set the value of the inverse of the matrix  
9 ## 4. get the value of the inverse of the matrix  
10     
11 makeCacheMatrix <- function(x = matrix()) {  
12    i <- NULL  
13      set <- function(y) {  
14              x <<- y  
15            i <<- NULL  
16        }  
17      get <- function() x  
18       setinverse <- function(inverse) i <<- inverse  
19       getinverse <- function() i  
20      list(  
21             set = set,  
22              get = get,  
23             setinverse = setinverse,  
24          getinverse = getinverse)  
25     
26  }  
27 
 
28 
 
29 ## Write a short comment describing this function 
30 ## The cacheSolve function calculates the inverse of the special "matrix" 
31   
32 
 
33 cacheSolve <- function(x, ...) { 
34         ## Return a matrix that is the inverse of 'x' 
35       i <- x$getinverse()  
36     if(!is.null(i)) {  
37          message("getting cached data")  
38         return(i)  
39         }  
40      data <- x$get()  
41     i <- solve(data, ...)  
42      x$setinverse(i)  
43     i  
44 } 
