context("Sodium corrections are OK")

test_that("tests for correction.ion[Na] - DNA/DNA", {
  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069)$Results$`Melting temperature (C)`,
               56.70492, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "owc2204")$Results$`Melting temperature (C)`,
               56.70492, tolerance = 1e-5, label = "owc2204")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "ahs01")$Results$`Melting temperature (C)`,
               54.1569, tolerance = 1e-5, label = "ahs01")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "kam71")$Results$`Melting temperature (C)`,
               51.72963, tolerance = 1e-5, label = "kam71")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "marschdot")$Results$`Melting temperature (C)`,
               49.18075, tolerance = 1e-5, label = "marschdot")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "owc1904")$Results$`Melting temperature (C)`,
               56.18571, tolerance = 1e-5, label = "owc1904")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "owc2004")$Results$`Melting temperature (C)`,
               56.67553, tolerance = 1e-5, label = "owc2004")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "owc2104")$Results$`Melting temperature (C)`,
               56.63967, tolerance = 1e-5, label = "owc2104")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "san96")$Results$`Melting temperature (C)`,
               53.01651, tolerance = 1e-5, label = "san96")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "san04")$Results$`Melting temperature (C)`,
               54.15157, tolerance = 1e-5, label = "san04")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "schlif")$Results$`Melting temperature (C)`,
               48.25579, tolerance = 1e-5, label = "schlif")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "tanna06")$Results$`Melting temperature (C)`,
               55.26711, tolerance = 1e-5, label = "tanna06")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 0.069,
                       correction.ion = "wet91")$Results$`Melting temperature (C)`,
               51.74573, tolerance = 1e-5, label = "wet91")
})

test_that("tests for correction.ion[Na] - RNA/RNA", {
  expect_equal(melting(sequence = "CCAGCCAGUCUCUCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Na.conc = 0.069)$Results$`Melting temperature (C)`,
               75.1552, tolerance = 1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "CCAGCCAGUCUCUCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Na.conc = 0.069,
                       correction.ion = "tanna07")$Results$`Melting temperature (C)`,
               75.1552, tolerance = 1e-5, label = "tanna07")

  expect_equal(melting(sequence = "CCAGCCAGUCUCUCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "rnarna",
                       Na.conc = 0.069,
                       correction.ion = "wet91")$Results$`Melting temperature (C)`,
               69.55572, tolerance = 1e-5, label = "wet91")

})

test_that("tests for correction.ion[Na] - mRNA/RNA", {
  expect_equal(melting(sequence = "UACGCGUCAAUAACGCUA",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "mrnarna",
                       Na.conc = 0.069)$Results$`Melting temperature (C)`,
               81.57763, tolerance = 1e-5, label = "mRNA/RNA default")

  expect_equal(melting(sequence = "UACGCGUCAAUAACGCUA",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "mrnarna",
                       Na.conc = 0.069,
                       correction.ion = "tanna07")$Results$`Melting temperature (C)`,
               81.57763, tolerance = 1e-5, label = "tanna07")
})

test_that("tests for correction.ion[Na] - DNA/RNA", {
  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnarna",
                       Na.conc = 0.069)$Results$`Melting temperature (C)`,
               62.08869, tolerance = 1e-5, label = "DNA/RNA default")

  expect_equal(melting(sequence = "CCAGCCAGTCTCTCC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnarna",
                       Na.conc = 0.069,
                       correction.ion = "wet91")$Results$`Melting temperature (C)`,
               62.08869, tolerance = 1e-5, label = "wet91")
})
