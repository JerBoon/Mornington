

#' Play Mornington Crescent versus the console.
#'
#' @export
#'
#' @examples
#'   mornington_crescent()
mornington_crescent <- function() {

  turn <- sample(0:1, 1)
  end  <- 0
  human <- NA


  while(TRUE) {

    end <- end + 0.05
    turn <- abs(turn-1)

    # Computer move
    if (turn == 1) {

      # Assess human move
      if (!is.na(human))
        cat("Nice!\n")

      # Simulate thinking...
      Sys.sleep(runif(1)*2)
      message(sample(stations,1))

    # Human move
    } else {
      cat("your turn:")
      human <- readline()

    }

    # Game over??
    if (runif(1) < end)
      break
  }

  if (turn == 0) {
    Sys.sleep(runif(1)*2)
    cat("You win\n")
  } else {
    cat("I win\n")
  }
}
