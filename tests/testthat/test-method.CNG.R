context("Nearest neighbour methods for CNG repeats are OK")

test_that("tests for method.CNG - RNA/RNA", {
  expect_equal(melting(sequence = "GCGGCGGCGGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               94.25719, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "GCGGCGGCGGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.CNG = "bro05")$Results$`Melting temperature (C)`,
               94.25719, tolerance=1e-5, label = "bro05")
})
