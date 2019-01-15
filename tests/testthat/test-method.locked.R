context("Nearest neighbour methods for locked nucleic acids effect are OK")

test_that("tests for method.locked - DNA/DNA", {
  expect_equal(melting(sequence = "CCATTLGCTACC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               63.61426, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CCATTLGCTACC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.locked = "mct04")$Results$`Melting temperature (C)`,
               63.61426, tolerance = 1e-5, label = "mct04")
})
