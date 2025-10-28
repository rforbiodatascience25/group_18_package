#' DNA_2_RNA
#'
#' @param DNA a DNA string
#'
#' @returns a RNA_string
#' @export
#'
#' @examples
#' # Convert a simple DNA sequence to RNA
#' RNA("ATGC")
#'
#' # You can also store the result in a variable
#' my_RNA <- RNA("TTGCA")
#' my_RNA
#'
#' # Expected output:
#' # "UUGCA"
RNA <- function(DNA){
  RNA_string <- gsub("T", "U", DNA)
  return(RNA_string)
}
