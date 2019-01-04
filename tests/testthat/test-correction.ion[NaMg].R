context("Mixed Sodium and Magnesium corrections are OK")

test_that("tests for correction.ion[NaMg] - DNA/DNA", {
  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015)$Results$`Melting temperature (C)`,
               65.83371, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015,
                       correction.ion = "owcmix08")$Results$`Melting temperature (C)`,
               65.83371, tolerance=1e-5, label = "owcmix08")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015,
                       correction.ion = "tanmix07")$Results$`Melting temperature (C)`,
               63.21723, tolerance=1e-5, label = "tanmix07")
})

test_that("tests for correction.ion[NaMg] - RNA/RNA", {
  expect_equal(melting(sequence = "CAGCCUCGUCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015)$Results$`Melting temperature (C)`,
               79.40119, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "CAGCCUCGUCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015,
                       correction.ion = "tanmix07")$Results$`Melting temperature (C)`,
               79.40119, tolerance=1e-5, label = "tanmix07")
})

test_that("tests for correction.ion[NaMg] - mRNA/RNA", {
  expect_equal(melting(sequence = "UACGCGUCAAUAACGCUA",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "mrnarna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015)$Results$`Melting temperature (C)`,
               96.46186, tolerance=1e-5, label = "mRNA/RNA default")

  expect_equal(melting(sequence = "UACGCGUCAAUAACGCUA",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "mrnarna",
                       Na.conc = 0.069,
                       Mg.conc = 0.0015,
                       correction.ion = "tanmix07")$Results$`Melting temperature (C)`,
               96.46186, tolerance=1e-5, label = "tanmix07")
})
