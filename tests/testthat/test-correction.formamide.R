context("Formamide corrections are OK")

test_that("tests for correction.formamide - DNA/DNA", {
  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       formamide.conc = 0.06)$Results$`Melting temperature (C)`,
               72.74867, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       formamide.conc = 0.06,
                       correction.formamide = "bla96")$Results$`Melting temperature (C)`,
               72.74867, tolerance=1e-5, label = "bla96")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       formamide.conc = 10,
                       correction.formamide = "lincorr")$Results$`Melting temperature (C)`,
               66.40154, tolerance=1e-5, label = "lincorr")
})
