context("Magnesium corrections are OK")

test_that("tests for correction.ion[Mg] - DNA/DNA", {
  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Mg.conc = 0.0015)$Results$`Melting temperature (C)`,
               65.52043, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Mg.conc = 0.0015,
                       correction.ion = "owcmg08")$Results$`Melting temperature (C)`,
               65.52043, tolerance=1e-5, label = "owcmg08")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Mg.conc = 0.0015,
                       correction.ion = "tanmg06")$Results$`Melting temperature (C)`,
               64.88082, tolerance=1e-5, label = "tanmg06")
})

test_that("tests for correction.ion[Mg] - RNA/RNA", {
  expect_equal(melting(sequence = "CAGCCUCGUCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Mg.conc = 0.0015)$Results$`Melting temperature (C)`,
               82.0796, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "CAGCCUCGUCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Mg.conc = 0.0015,
                       correction.ion = "tanmg07")$Results$`Melting temperature (C)`,
               82.0796, tolerance=1e-5, label = "tanmg07")
})

test_that("tests for correction.ion[Mg] - mRNA/RNA", {
  expect_equal(melting(sequence = "UACGCGUCAAUAACGCUA",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "mrnarna",
                       Mg.conc = 0.0015)$Results$`Melting temperature (C)`,
               90.06842, tolerance=1e-5, label = "mRNA/RNA default")

  expect_equal(melting(sequence = "UACGCGUCAAUAACGCUA",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "mrnarna",
                       Mg.conc = 0.0015,
                       correction.ion = "tanmg07")$Results$`Melting temperature (C)`,
               90.06842, tolerance=1e-5, label = "tanmg07")
})
