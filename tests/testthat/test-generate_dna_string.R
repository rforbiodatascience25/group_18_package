test_that("generate_dna_string returns a DNA sequence of correct length", {
  result <- generate_dna_string(10)

  # Check that it's a character string
  expect_type(result, "character")

  # Check that it has length 1 (a single string)
  expect_length(result, 1)

  # Check that the string has 10 characters
  expect_equal(nchar(result), 10)

  # Check that all characters are valid DNA bases
  expect_true(all(strsplit(result, "")[[1]] %in% c("A", "T", "G", "C")))
})
