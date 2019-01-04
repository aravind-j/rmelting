context("Nearest neighbour methods for long bulge loop effect are OK")

test_that("tests for method.long.bulge.loop - DNA/DNA", {
  expect_equal(melting(sequence = "ATATGACGCCACAGCG",
                       comp.sequence = "TATAC---GGTGTCGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               51.7104, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "ATATGACGCCACAGCG",
                       comp.sequence = "TATAC---GGTGTCGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.long.bulge.loop = "san04")$Results$`Melting temperature (C)`,
               51.7104, tolerance=1e-5, label = "san04")
})

test_that("tests for method.long.bulge.loop - RNA/RNA", {
  expect_equal(melting(sequence = "AUAUGACGCCACAGCG",
                       comp.sequence = "UAUAC---GGUGUCGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               66.0497, tolerance=1e-5, label = "RNA/RNA default")

  expect_equal(melting(sequence = "AUAUGACGCCACAGCG",
                       comp.sequence = "UAUAC---GGUGUCGC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "rnarna",
                       Na.conc = 1,
                       method.long.bulge.loop = "tur06")$Results$`Melting temperature (C)`,
               66.0497, tolerance=1e-5, label = "tur06")
})
