context("DMSO corrections are OK")

test_that("tests for correction.DMSO - DNA/DNA", {
  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       DMSO.conc = 10)$Results$`Melting temperature (C)`,
               65.40154, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1, DMSO.conc = 10,
                       correction.DMSO = "ahs01")$Results$`Melting temperature (C)`,
               65.40154, tolerance=1e-5, label = "ahs01")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1, DMSO.conc = 10,
                       correction.DMSO = "cul76")$Results$`Melting temperature (C)`,
               67.90154, tolerance=1e-5, label = "cul76")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       DMSO.conc = 10,
                       correction.DMSO = "esc80")$Results$`Melting temperature (C)`,
               66.15154, tolerance=1e-5, label = "esc80")

  expect_equal(melting(sequence = "CAGCCTCGTCGCAGC",
                       nucleic.acid.conc = 0.000002,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       DMSO.conc = 10,
                       correction.DMSO = "mus81")$Results$`Melting temperature (C)`,
               66.90154, tolerance=1e-5, label = "mus81")
})
