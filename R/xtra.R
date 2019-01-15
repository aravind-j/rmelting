
wlcm <- paste0("\n",
               paste(rep("-", 80), collapse = ""), "\n",
               "Welcome to rmelting version ",
               utils::packageDescription("rmelting")$Version, "\n",
               "\n", "\n",
               "# To know how to use this package type:", "\n",
               "  browseVignettes(package = 'rmelting')", "\n",
               "  for the package vignette.", "\n",
               "\n",
               "# To know whats new in this version type:", "\n",
               "  news(package='rmelting')", "\n",
               "  for the NEWS file.", "\n",
               "\n",
               "# To cite the methods in the package type:", "\n",
               "  citation(package='rmelting')", "\n",
               "\n",
               "# To suppress this message use:", "\n",
               "  suppressPackageStartupMessages(library(rmelting))", "\n",
               paste(rep("-", 80), collapse = ""), "\n")

.onAttach <- function(lib, pkg, ...){
  packageStartupMessage(wlcm)

}

.onLoad <- function(lib, pkg, ...){
  # set "NN_PATH"
  Sys.setenv("NN_PATH" = system.file("extdata", "Data", package = "rmelting"))

  # load jars
  rJava::.jpackage(pkg, jars = "*", lib.loc = lib)
  rJava::.jaddClassPath(dir(file.path(getwd(), "inst/java"), full.names = TRUE))

  # Stop logging
  # [https://github.com/ropensci/tabulizer/blob/master/R/logging.R]
  rJava::J("java.util.logging.LogManager")$getLogManager()$reset()
  invisible(NULL)

}
