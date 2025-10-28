#' Function number three
#'
#' @param seq_DNA DNA sequence
#' @param codon_split splits DNA into codons
#' @param length length of the sequence
#'
#' @returns it returns codons from DNA sequence
#' @export
#'
#' @examples split_codons("CUCCUACUG")
codon_split <- function(seq_DNA, start = 1){
  length <- nchar(seq_DNA) #get the length of DNA sequence
  codons <- substring(seq_DNA,
                      first = seq(from = start, to = length-3+1, by = 3), #starting position of codons
                      last = seq(from = 3+start-1, to = length, by = 3)) #ending position of codons
  return(codons) #return of all codons from the sequence
}


