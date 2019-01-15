context("Nearest neighbour methods for internal loop effect are OK")

test_that("tests for method.internal.loop - DNA/DNA", {
  expect_equal(melting(sequence = "GCGATTGGCACTTTGGTGAAC",
                       comp.sequence = "CGCTACATATGAAACCACTTG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               84.09052, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "GCGATTGGCACTTTGGTGAAC",
                       comp.sequence = "CGCTACATATGAAACCACTTG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.internal.loop = "san04")$Results$`Melting temperature (C)`,
               84.09052, tolerance = 1e-5, label = "tan04")

})

test_that("tests for method.internal.loop - RNA/RNA", {
  expect_equal(melting(sequence = "GACAC-GCUG",
                       comp.sequence = "CUGUAUCGAC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               45.98713, tolerance = 1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "GACAC-GCUG", comp.sequence = "CUGUAUCGAC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.internal.loop = "zno07")$Results$`Melting temperature (C)`,
               40.49012, tolerance = 1e-5, label = "tur06")

  expect_equal(melting(sequence = "GACAC-GCUG", comp.sequence = "CUGUAUCGAC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.internal.loop = "tur06")$Results$`Melting temperature (C)`,
               45.98713, tolerance = 1e-5, label = "ser07")
})
