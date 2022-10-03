context("Nearest neighbour methods for locked nucleic acids effect are OK")

test_that("tests for method.locked - DNA/DNA", {
  expect_equal(melting(sequence = "CCATTLGCTACC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               63.48299, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CCATTLGCTACC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.locked = "mct04")$Results$`Melting temperature (C)`,
               63.61426, tolerance = 1e-5, label = "mct04")

  expect_equal(melting(sequence = "CCATTLGCTACC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.locked = "owc11")$Results$`Melting temperature (C)`,
               63.48299, tolerance = 1e-5, label = "owc11")
})

test_that("tests for method.consecutive.locked - DNA/DNA", {
  expect_equal(melting(sequence = "GALCLC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               12.94323, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "GALCLC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.consecutive.locked = "owc11")$Results$`Melting temperature (C)`,
               12.94323, tolerance = 1e-5, label = "owc11")
})

test_that("tests for method.consecutive.locked.singleMM - DNA/DNA", {
  expect_equal(melting(sequence = "GALCLGLC",
                       comp.sequence = "CTTCG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               0.2520424, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "GALCLGLC",
                       comp.sequence = "CTTCG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.consecutive.locked = "owc11")$Results$`Melting temperature (C)`,
               0.2520424, tolerance = 1e-5, label = "owc11")
})
