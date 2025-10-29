#' Function number three
#'
#' @param seq_DNA DNA sequence
#' @param codon_split splits DNA into codons
#'
#' @returns it returns codons from DNA sequence
#' @export
#'
#' @examples
#' codon_split("CUCCUACUG")
codon_split <- function(seq_DNA, start = 1){
  seq_length <- nchar(seq_DNA) #get the length of DNA sequence
  codons <- substring(seq_DNA,
                      first = seq(from = start, to = seq_length-3+1, by = 3), #starting position of codons
                      last = seq(from = 3+start-1, to = seq_length, by = 3)) #ending position of codons
  return(codons) #return of all codons from the sequence
}


