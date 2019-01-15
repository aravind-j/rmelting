context("Nearest neighbour methods for tandem mismatches are OK")

test_that("tests for method.tandemMM - DNA/DNA", {
  expect_equal(melting(sequence = "GACGTTGGAC", comp.sequence = "CTGCGGCCTG",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               50.20175, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "GACGTTGGAC", comp.sequence = "CTGCGGCCTG",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.tandemMM = "allsanpey")$Results$`Melting temperature (C)`,
               50.20175, tolerance = 1e-5, label = "allsanpey")
})

test_that("tests for method.tandemMM - RNA/RNA", {
  expect_equal(melting(sequence = "GAGCGGAG",
                       comp.sequence = "CUCCACUC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               21.07224, tolerance = 1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "GAGCGGAG",
                       comp.sequence = "CUCCACUC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.tandemMM = "tur99")$Results$`Melting temperature (C)`,
               21.07224, tolerance = 1e-5, label = "tur99")
})
