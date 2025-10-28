#' Generate random DNA sequence
#'
#' @param length The desired length of the sequence
#'
#' @returns string that represents DNA sequence
#' @export
#'
#' @examples
#' generate_dna_string(10)
#' generate_dna_string(25)
generate_dna_string <- function(length){
  bases <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(bases, collapse = "")
  return(sequence)
}
