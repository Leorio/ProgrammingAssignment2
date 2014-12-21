## 	Example Calculations

##Below two examples are given, on which the functions were tested. We can see that the functions work properly:

A
     [,1] [,2]
[1,]    2   -9
[2,]    0    9

cacheMatrix <- makeCacheMatrix(A)

invA<-cacheSolve(cacheMatrix)

invA
     [,1]      [,2]
[1,]  0.5 0.5000000
[2,]  0.0 0.1111111

### Test that invA is indeed the inverse

invA%*%A
     [,1] [,2]
[1,]    1    0
[2,]    0    1

A%*%invA
     [,1] [,2]
[1,]    1    0
[2,]    0    1

### Cache of the inverse matrix

cacheSolve(cacheMatrix)

getting cached data
     [,1]      [,2]
[1,]  0.5 0.5000000
[2,]  0.0 0.1111111

### Second example

B
     [,1] [,2] [,3]
[1,]    3    2    1
[2,]    1    1   -1
[3,]    0    1    2

invB<-solve(B)

invB
           [,1] [,2]       [,3]
[1,]  0.5000000 -0.5 -0.5000000
[2,] -0.3333333  1.0  0.6666667
[3,]  0.1666667 -0.5  0.1666667

exB<-makeCacheMatrix(B)

cacheSolve(exB)
           [,1] [,2]       [,3]
[1,]  0.5000000 -0.5 -0.5000000
[2,] -0.3333333  1.0  0.6666667
[3,]  0.1666667 -0.5  0.1666667

cacheSolve(exB)

getting cached data
           [,1] [,2]       [,3]
[1,]  0.5000000 -0.5 -0.5000000
[2,] -0.3333333  1.0  0.6666667
[3,]  0.1666667 -0.5  0.1666667
