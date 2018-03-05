setClass(Class="simpsons",
         representation = representation(
           x="numeric", #set the class of the slot
           y="numeric",
           result="numeric"
         ),
         prototype= prototype(
           x=c(), #leave the default data empty
           y=c(),
           result=c()
         )
)

setValidity("simpsons", function(x, y){
  test1<-length(x)==length(y) 
  if(test1 ==F){return("x and y are not of equal length")}
}
)

setMethod("initialize", "simpsons", function(.Object, ...){
  value=callNexMethod()
  validObject(value)
  return(value)
})
setMethod("integrateIt", "simpsons",
          function(object){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(object@simpsons)
          })



setMethod("print", "simpsons",
          function(x){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(print("The simpson approximation is:",x@result))
          })