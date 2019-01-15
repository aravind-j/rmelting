context("Nearest neighbour methods for single bulge loop effect are OK")

test_that("tests for method.single.bulge.loop - DNA/DNA", {
  expect_equal(melting(sequence = "TCGATTAGCGACACAGG",
                       comp.sequence = "AGCTAATC-CTGTGTCC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               71.12754, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "TCGATTAGCGACACAGG",
                       comp.sequence = "AGCTAATC-CTGTGTCC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.single.bulge.loop = "tan04")$Results$`Melting temperature (C)`,
               71.12754, tolerance = 1e-5, label = "tan04")

  expect_equal(melting(sequence = "TCGATTAGCGACACAGG",
                       comp.sequence = "AGCTAATC-CTGTGTCC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.single.bulge.loop = "san04")$Results$`Melting temperature (C)`,
               62.0496, tolerance = 1e-5, label = "san04")
})

test_that("tests for method.single.bulge.loop - RNA/RNA", {
  expect_equal(melting(sequence = "GACUCUGUC",
                       comp.sequence = "CUGA-ACAG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               39.47787, tolerance = 1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "GACUCUGUC",
                       comp.sequence = "CUGA-ACAG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.single.bulge.loop = "tur06")$Results$`Melting temperature (C)`,
               39.47787, tolerance = 1e-5, label = "tur06")

  expect_equal(melting(sequence = "GACUCUGUC",
                       comp.sequence = "CUGA-ACAG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.single.bulge.loop = "ser07")$Results$`Melting temperature (C)`,
               31.42849, tolerance = 1e-5, label = "ser07")
})
