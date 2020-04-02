#' Get default chickendipR recipe
#'
#' Instantiates the default chickendipR recipe
#' @param scale: numeric to scale recipe by
#' @export
#' @examples
#' rec <- recipe()
#' print(rec)
recipe <- function(scale = 2.0) {
  recipe <- new("chickendipR",
                ingredients = list(chicken = c(1.5, "lb"),
                                   taco_seasoning = c(1, "packet"),
                                   fresh_salsa = c(1, "container"),
                                   black_beans = c(1, "can"),
                                   corn = c(1, "can"),
                                   cream_cheese = c(8, "oz"),
                                   cheddar_cheese = c(1, "cup")),
                scale = scale,
                directions =
"First, a preface on slow cooker size. The slow cooker I use just fits a double
batch and is rated at 5 quarts. A 4 quart slow cooker would most likely not
handle a double batch. Plan your ingredients accordingly and remember that a
double batch would last a family of four at least 2-3 days.

In the slow cooker, layer chicken, taco seasoning, salsa, black beans (not
drained), corn (drained) Cook on high for two hours or low for 6 hours -- It is
done when the chicken can be easily shredded using a fork Once the chicken is
cooked and easily shredded via fork, shred the chicken entirely by either
removing it from the slow cooker or shredding in the slow cooker itself Add
cream cheese and cheddar cheese and stir until mixed. That is it.",
                notes =
"
You may note the container of fresh salsa has no associated units. The recipe
passed down to me did not specify. For those who have had it from me, I
typically get 24 oz cans. Choose the heat level to match your personal
preferences. If you're not sure of a preferred heat level, mix and match. When I
make this, I typically get one hot and one medium salsa to use in my double
batch.

A few additional personal notes: I typically cut the cream cheese into a few
blocks to increase surface area and reduce mixing time. I also typically use
shredded sharp cheddar cheese from a bag (one bag is all that is required for a
double batch).

The primary vehicle for consuming chicken dip is a tortilla chip. I recommend
getting heavily fortified chips (Mission Rounds) as chicken dip is a dense
substance. If feeling creative, this can be mixed with rice or eaten with a fork
alone -- chicken dip is very versatile.
"
                )
  for (i in 1:length(recipe@ingredients)) {
      tmpval <- as.character(scale * as.numeric(recipe@ingredients[[i]][1]))
      recipe@ingredients[[i]][1] <- tmpval
  }
  return(recipe)
}
