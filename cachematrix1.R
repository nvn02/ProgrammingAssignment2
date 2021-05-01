## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##i have written two functions


makeCacheMatrix<-function(x=matrix()){
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function(){x}
  setinverse<-function(inverse){inv<<-inverse}
  getinverse<-function(){inv}
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
    
  }





## Write a short comment describing this function
##get cache data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv)){                           ##checks if inv is null
    message('receiving cache data')
    return(inv)    ##returns inverse value
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinverse(inv)
  inv 
}
