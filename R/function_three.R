codon_split <- function(seq_DNA, start = 1){
  length <- nchar(seq_DNA)
  codons <- substring(seq_DNA,
                      first = seq(from = start, to = length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = length, by = 3))
  return(codons)
}

#codon_split - splits DNA into codons
#seq_DNA - DNA sequence
#length - length of the sequence
