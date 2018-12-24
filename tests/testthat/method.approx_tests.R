test_that("tests for method.approx", {
  DNAseq <- c("TCTAATGTGCTGTTAGATGTATCCAGAGATAGCCGAGCATAAACTTCAACACACGAGACGTTGATTGGATTTAACCATAG")
  RNAseq <- c("UUAAUCUCCGUCAUCUUUAAGCCGUGGAGAGACUGUAGACUUGAACAGGGGUAAGCGGAGGCACGUAGGAUUCACAUCAU")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               87.82455, tolerance=1e-5, label = "default")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "wetdna91")$Results$`Melting temperature (C)`,
               87.82455, tolerance=1e-5, label = "wetdna91")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "ahs01")$Results$`Melting temperature (C)`,
               87.325, tolerance=1e-5, label = "ahs01")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "che93")$Results$`Melting temperature (C)`,
               77.575, tolerance=1e-5, label = "che93")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "che93corr")$Results$`Melting temperature (C)`,
               79.0125, tolerance=1e-5, label = "che93corr")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "schdot")$Results$`Melting temperature (C)`,
               89.4625, tolerance=1e-5, label = "schdot")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "owe69")$Results$`Melting temperature (C)`,
               100.96, tolerance=1e-5, label = "owe69")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnadna", Na.conc = 1,
                       method.approx = "san98")$Results$`Melting temperature (C)`,
               86.9, tolerance=1e-5, label = "san98")

  expect_equal(melting(sequence = RNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "rnarna", Na.conc = 1,
                       method.approx = "wetrna91")$Results$`Melting temperature (C)`,
               101.1745, tolerance=1e-5, label = "wetrna91")

  expect_equal(melting(sequence = DNAseq, nucleic.acid.conc = 2e-06,
                       hybridisation.type = "dnarna", Na.conc = 1,
                       method.approx = "wetdnarna91")$Results$`Melting temperature (C)`,
               88.92455, tolerance=1e-5, label = "wetdnarna91")
})
