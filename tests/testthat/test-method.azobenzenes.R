context("Nearest neighbour methods for azobenzenes effect are OK")

test_that("tests for method.azobenzenes - DNA/DNA", {
  expect_equal(melting(sequence = "CTX_CTTAAX_CGAAGX_CGAGAX_CTATAX_CCC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1)$Results$`Melting temperature (C)`,
               47.85385, tolerance=1e-5, label = "DNA/DNA default")

  expect_equal(melting(sequence = "CTX_CTTAAX_CGAAGX_CGAGAX_CTATAX_CCC",
                       nucleic.acid.conc = 0.0001,
                       hybridisation.type = "dnadna",
                       Na.conc = 1,
                       method.azobenzenes = "asa05")$Results$`Melting temperature (C)`,
               47.85385, tolerance=1e-5, label = "asa05")
})
