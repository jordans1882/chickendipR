### Class definitions for the package

##' Class "chickendipR" of chickendipR recipes
##'
##' A chickendipR recipe is represented as a S4 object
##'
##' @name chickendipR-class
##' @aliases chickendipR-class
##' @docType class
##' @section Objects from the Class: Objects are created by calls to
##' \code{\link{default_recipe}}
##' @keywords classes
##' @examples
##'
##' showClass("chickendipR")
##' methods(class="chickendipR")
##' @export
setClass("chickendipR", representation(ingredients = "list",
                                       scale = "numeric",
                                       directions = "character",
                                       notes = "character"))
