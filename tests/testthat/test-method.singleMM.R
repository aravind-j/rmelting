context("Nearest neighbour methods for single mismatch are OK")

test_that("tests for method.singleMM - DNA/DNA", {
  expect_equal(melting(sequence = "CAACTTGATATTAATA",
                       comp.sequence = "GTTGAACTCTAATTAT",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               51.97499, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CAACTTGATATTAATA",
                       comp.sequence = "GTTGAACTCTAATTAT",
                       nucleic.acid.conc = 0.0004,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.singleMM = "allsanpey")$Results$`Melting temperature (C)`,
               51.97499, tolerance=1e-5, label = "allsanpey")
})

test_that("tests for method.singleMM - RNA/RNA", {
  expect_equal(melting(sequence = "GACAGGCUG", comp.sequence = "CUGUGCGAC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               54.40363, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "GACAGGCUG", comp.sequence = "CUGUGCGAC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.singleMM = "zno07")$Results$`Melting temperature (C)`,
               54.40363, tolerance=1e-5, label = "zno07")

  expect_equal(melting(sequence = "CAGUACGUC", comp.sequence = "GUCGGGCAG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.singleMM = "zno08")$Results$`Melting temperature (C)`,
               38.26298, tolerance=1e-5, label = "zno08")

  expect_equal(melting(sequence = "GACAGGCUG", comp.sequence = "CUGUGCGAC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.singleMM = "tur06")$Results$`Melting temperature (C)`,
               58.27825, tolerance=1e-5, label = "tur06")
})

test_that("tests for method.singleMM - DNA/RNA", {
  expect_equal(melting(sequence = "CCATAACTACC", comp.sequence = "GGUAAUGAUGG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               40.32976, tolerance=1e-5, label = "DNA/RNA default")

  expect_equal(melting(sequence = "CCATAACTACC", comp.sequence = "GGUAAUGAUGG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnarna",
                       Na.conc = 1,
                       method.singleMM = "wat11")$Results$`Melting temperature (C)`,
               40.32976, tolerance=1e-5, label = "allsanpey")
})
