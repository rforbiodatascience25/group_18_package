#' Plots sequence counts
#'
#' @param sequence input string of characters to be analyse
#'
#' @returns ggplot 2 plot of sequence counts
#' @export
#'
#' @importFrom stringr str_split boundary str_count
#' @examples
#' plot_sequence_counts("ATGCGTAC")
plot_sequence_counts <- function(sequence_string){
  unique_chars <- sequence_string |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_chars, function(amino_acid) stringr::str_count(string = sequence_string, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Sequence_string"]] <- rownames(counts)

  sequence_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = sequence_string, y = Counts, fill = sequence_string)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(sequence_plot)
}
