context("Nearest neighbour methods for GU wobble base pairs are OK")

test_that("tests for method.GU - RNA/RNA", {
  expect_equal(melting(sequence = "CCAGCGUCCU",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               79.46955, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "CCAGCGUCCU",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.GU = "ser12")$Results$`Melting temperature (C)`,
               79.46955, tolerance=1e-5, label = "ser12")

  expect_equal(melting(sequence = "CCAGCGUCCU",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.GU = "tur99")$Results$`Melting temperature (C)`,
               79.46955, tolerance=1e-5, label = "tur99")
})
