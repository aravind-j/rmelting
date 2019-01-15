context("Nearest neighbour methods for perfectly matching sequences are OK")

test_that("tests for method.nn - DNA/DNA (No Self-Complimentarity)", {
  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               73.35168, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "all97")$Results$`Melting temperature (C)`,
               73.35168, tolerance = 1e-5, label = "all97")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "bre86")$Results$`Melting temperature (C)`,
               83.2203, tolerance = 1e-5, label = "bre86")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "san04")$Results$`Melting temperature (C)`,
               73.30191, tolerance = 1e-5, label = "san04")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "san96")$Results$`Melting temperature (C)`,
               75.7102, tolerance = 1e-5, label = "san96")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "sug96")$Results$`Melting temperature (C)`,
               78.17556, tolerance = 1e-5, label = "sug96")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "tan04")$Results$`Melting temperature (C)`,
               71.31413, tolerance = 1e-5, label = "tan04")

})

test_that("tests for method.nn - RNA/RNA (No Self-Complimentarity)", {
  expect_equal(melting(sequence = "CAGUGAGACAGCAAUGGUCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               86.77685, tolerance = 1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "CAGUGAGACAGCAAUGGUCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.nn = "xia98")$Results$`Melting temperature (C)`,
               86.77685, tolerance = 1e-5, label = "xia98")

  expect_equal(melting(sequence = "CAGUGAGACAGCAAUGGUCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.nn = "fre86")$Results$`Melting temperature (C)`,
               83.81257, tolerance = 1e-5, label = "fre86")
})

test_that("tests for method.nn - mRNA/RNA (No Self-Complimentarity)", {
  expect_equal(melting(sequence = "CAGUGAGACAGCAAUGGUCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "mrnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               99.01986, tolerance = 1e-5, label = "mRNA/RNA default")

  expect_equal(melting(sequence = "CAGUGAGACAGCAAUGGUCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "mrnarna", Na.conc = 1,
                       method.nn = "tur06")$Results$`Melting temperature (C)`,
               99.01986, tolerance = 1e-5, label = "tur06")

})

test_that("tests for method.nn - DNA/RNA (No Self-Complimentarity)", {
  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               66.77049, tolerance = 1e-5, label = "DNA/RNA default")

  expect_equal(melting(sequence = "CAGTGAGACAGCAATGGTCG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnarna", Na.conc = 1,
                       method.nn = "sug95")$Results$`Melting temperature (C)`,
               66.77049, tolerance = 1e-5, label = "sug95")
})

test_that("tests for method.nn - DNA/DNA (Self-Complimentarity)", {
  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               56.00644, tolerance = 1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "all97")$Results$`Melting temperature (C)`,
               56.00644, tolerance = 1e-5, label = "all97")

  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "bre86")$Results$`Melting temperature (C)`,
               63.44605, tolerance = 1e-5, label = "bre86")

  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "san04")$Results$`Melting temperature (C)`,
               57.80792, tolerance = 1e-5, label = "san04")

  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "san96")$Results$`Melting temperature (C)`,
               55.0921, tolerance = 1e-5, label = "san96")

  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "sug96")$Results$`Melting temperature (C)`,
               59.06213, tolerance = 1e-5, label = "sug96")

  expect_equal(melting(sequence = "CATATGGCCATATG",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.nn = "tan04")$Results$`Melting temperature (C)`,
               55.65824, tolerance = 1e-5, label = "tan04")

})

test_that("tests for method.nn - RNA/RNA (Self-Complimentarity)", {
  expect_equal(melting(sequence = "AUGUACAU",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               30.27015, tolerance = 1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "AUGUACAU",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.nn = "xia98")$Results$`Melting temperature (C)`,
               30.27015, tolerance = 1e-5, label = "xia98")

  expect_equal(melting(sequence = "AUGUACAU",
                       nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.nn = "fre86")$Results$`Melting temperature (C)`,
               31.48175, tolerance = 1e-5, label = "fre86")
})
