context("Nearest neighbour methods for single dangling end are OK")

test_that("tests for method.single.dangle - DNA/DNA", {
  expect_equal(melting(sequence = "-GTAGCTACA",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               52.58935, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "-GTAGCTACA",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.single.dangle = "bom00")$Results$`Melting temperature (C)`,
               52.58935, tolerance=1e-5, label = "bom00")

  expect_equal(melting(sequence = "-GTAGCTACA",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.single.dangle = "sugdna02")$Results$`Melting temperature (C)`,
               50.78548, tolerance=1e-5, label = "sugdna02")
})

test_that("tests for method.single.dangle - RNA/RNA", {
  expect_equal(melting(sequence = "-GGCGCUG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               65.7647, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "-GGCGCUG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.single.dangle = "ser08")$Results$`Melting temperature (C)`,
               65.7647, tolerance=1e-5, label = "ser08")

  expect_equal(melting(sequence = "-GGCGCUG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.single.dangle = "sugrna02")$Results$`Melting temperature (C)`,
               65.7647, tolerance=1e-5, label = "sugrna02")
})
