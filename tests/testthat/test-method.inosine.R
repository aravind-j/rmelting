context("Nearest neighbour methods for inosine bases effect are OK")

test_that("tests for method.inosine - DNA/DNA", {
  expect_equal(melting(sequence = "CCGICTGTIGCG",
                       comp.sequence = "GGCCGACACCGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               65.36853, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CCGICTGTIGCG",
                       comp.sequence = "GGCCGACACCGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.inosine = "san05")$Results$`Melting temperature (C)`,
               65.36853, tolerance=1e-5, label = "san05")
})

test_that("tests for method.inosine - RNA/RNA", {
  expect_equal(melting(sequence = "GCAICGC",
                       comp.sequence = "CGUUGCG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               46.75042, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "GCAICGC",
                       comp.sequence = "CGUUGCG",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.inosine = "zno07")$Results$`Melting temperature (C)`,
               46.75042, tolerance=1e-5, label = "zno07")
})
