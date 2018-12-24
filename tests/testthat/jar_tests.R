context("melting.jar is recognized")

test_that("melting.jar is loaded, classpath and classes can be initiated", {

  melting <- new(J("melting.Main"))

  expect_equal(.jclass(melting), "melting.Main")

})
