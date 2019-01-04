context("Nearest neighbour methods for double dangling ends are OK")

test_that("tests for method.double.dangle - DNA/DNA", {
  expect_equal(melting(sequence = "--ATGCATAA",
                       nucleic.acid.conc = 0.0004, hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               44.88615, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "--ATGCATAA",
                       nucleic.acid.conc = 0.0004, hybridisation.type = "dnadna",
                       Na.conc = 1, method.double.dangle = "sugdna02")$Results$`Melting temperature (C)`,
               44.88615, tolerance=1e-5, label = "sugdna02")
})

test_that("tests for method.double.dangle - RNA/RNA", {
  expect_equal(melting(sequence = "--AUGCAUAA",
                       nucleic.acid.conc = 0.0001, hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               42.79724, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "--AUGCAUAA",
                       nucleic.acid.conc = 0.0001, hybridisation.type = "rnarna",
                       Na.conc = 1, method.double.dangle = "ser06")$Results$`Melting temperature (C)`,
               42.79724, tolerance=1e-5, label = "ser06")

  expect_equal(melting(sequence = "--AUGCAUAA",
                       nucleic.acid.conc = 0.0001, hybridisation.type = "rnarna",
                       Na.conc = 1, method.double.dangle = "sugrna02")$Results$`Melting temperature (C)`,
               41.82788, tolerance=1e-5, label = "sugrna02")

  expect_equal(melting(sequence = "--AUGCAUAA",
                       nucleic.acid.conc = 0.0001, hybridisation.type = "rnarna",
                       Na.conc = 1, method.double.dangle = "ser05")$Results$`Melting temperature (C)`,
               42.78815, tolerance=1e-5, label = "ser05")
})
