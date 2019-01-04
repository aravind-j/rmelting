context("Nearest neighbour methods for long dangling end are OK")

test_that("tests for method.long.dangle - DNA/DNA", {
  expect_equal(melting(sequence = "----GCATATGCAAAA",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               55.69854, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "----GCATATGCAAAA",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.long.dangle = "sugdna02")$Results$`Melting temperature (C)`,
               55.69854, tolerance=1e-5, label = "sugdna02")
})

test_that("tests for method.long.dangle - RNA/RNA", {
  expect_equal(melting(sequence = "AAAAGCAUAUGC----",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               57.21314, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "AAAAGCAUAUGC----",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.long.dangle = "sugrna02")$Results$`Melting temperature (C)`,
               57.21314, tolerance=1e-5, label = "ser06")
})
