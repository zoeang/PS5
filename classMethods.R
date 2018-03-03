#Trapezoid----------------------------------------------------------
setClass(Class="trapezoid",
         representation = representation(
           x="numeric", #set the class of the slot
           y="numeric"
           result="numeric"
         ),
         prototype= prototype(
           x=c(), #leave the default data empty
           y=c(),
           result=c()
         )
)

setValidity("trapezoid", function(x, y, a, b, rule="trap"){
  test1<-length(x)==length(y) 
  test2<-x>=a
  test3<-x<=b
  test4<-rule=="trap"
  if(test1 ==F){return("x and y are not of equal length")}
  if(test2==F){return("a must be greater than or equal to x")}
  if(test3==F){return("b must be less than or equal to x")}
  if(test4==F){return('rule must be "trap"')}
}
)

setMethod("initialize", "trapezoid", function(.Object, ...){
  value=callNexMethod()
  validObject(value)
  return(value)
})


setGeneric("integrateIt",
           function(object=c('trapezoid', 'simpsons') { #***
             standardGeneric("integrateIt")
           })
#Remember: you can make the function outside of the method if that's easier
setMethod("integrateIt", "trapezoid",
          function(object){ #the argument of functio MUST be the same as the argument in the generic
            #if creating a method for an existing generic/function, use the help file to
            #find the argument for the function of the new method 
            return(object@trapezoid)
          })
#Simpsons==================================================================
setClass(Class="simpsons",
         representation = representation(
           x="numeric", #set the class of the slot
           y="numeric"
           result="numeric"
         ),
         prototype= prototype(
           x=c(), #leave the default data empty
           y=c(),
           result=c()
         )
)

setValidity("trapezoid", function(x, y, a, b, rule="simpsons"){
  test1<-length(x)==length(y) 
  test2<-x>=a
  test3<-x<=b
  test4<-rule=="simpsons"
  if(test1 ==F){return("x and y are not of equal length")}
  if(test2==F){return("a must be greater than or equal to x")}
  if(test3==F){return("b must be less than or equal to x")}
  if(test4==F){return('rule must be "simpsons"')}
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