
wlcm <- paste0("\n",
               "--------------------------------------------------------------------------------\n",
               "Welcome to rmelting version ", utils::packageDescription("rmelting")$Version, "\n",
               "\n", "\n",
               "# To know whats new in this version type:", "\n",
               "  news(package='rmelting')", "\n", "  for the NEWS file.", "\n",
               "\n",
               "# To cite the methods in the package type:", "\n",
               "  citation(package='rmelting')","\n",
               "\n",
               "# To suppress this message use:", "\n",
               "  suppressPackageStartupMessages(library(rmelting))", "\n",
               "--------------------------------------------------------------------------------\n")

.onAttach <- function(lib, pkg,...){
  packageStartupMessage(wlcm)

}

.onLoad <- function(lib, pkg,...){
  # set "NN_PATH"
  Sys.setenv("NN_PATH"=system.file("extdata", "Data", package="melting5jars"))

}
