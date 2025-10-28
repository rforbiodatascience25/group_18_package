#' Example function
#'
#' @param codons A character vector of RNA codons (e.g., c('AUG', 'UUU', 'GGC')).
#'
#' @return A string representing the translated amino acid sequence.
#' @export

func_4 <- function(codons) {
  # Replace 'codon_table' with the name of your codon table object if different
  name_me2 <- paste0(codon_table[codons], collapse = '')
  return(name_me2)
}

