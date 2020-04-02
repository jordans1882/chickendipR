##' Print chickendipR recipe
##'
##' @title Print out the recipe with directions and notes
##' @name print
##' @examples
##' rec <- default_recipe()
##' print(rec)
##' @method print chickendipR
##' @export
print.chickendipR <- function(x) {
  text <- paste("Ingredients: (batch size - ", x@scale, ")", "\n", sep = "")
  for(i in 1:length(x@ingredients)) {
    text <- paste(text,
                  gsub("_", " ", names(x@ingredients)[i]),
                  " - ",
                  x@ingredients[[i]][1],
                  x@ingredients[[i]][2], "\n")
  }
  text <- paste(text, "\n\nDirections:\n", x@directions, "\n", sep = "")
  text <- paste(text, "\n\nNotes:", x@notes, sep = "")
  cat(text)
}
