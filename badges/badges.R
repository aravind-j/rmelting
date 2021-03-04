
# httr

pkg <- "rmelting"

pkgr <- "missing"
pkgd <- "missing"

page <- httr::GET("https://www.bioconductor.org/install/")
page <- httr::content(page, as = 'text', encoding = "UTF-8")

bcr <- sub('.*(<p>The current release of <em>Bioconductor</em> is version\n.*?;).*', '\\1', page)
bcd <- sub('.*(<p>The development version of <em>Bioconductor</em> is version\n.*?;).*', '\\1', page)

bcr <- gsub(".*\n(.+);$", "\\1", bcr)
bcd <- gsub(".*\n(.+);$", "\\1", bcd)

rpr <- as.data.frame(available.packages(repos = paste("https://bioconductor.org/packages/",
                                                      bcr, "/bioc", sep = "")))
rpd <- as.data.frame(available.packages(repos = paste("https://bioconductor.org/packages/",
                                                      bcd, "/bioc", sep = "")))
pkgr <- rpr[rpr$Package == "rmelting", ]$Version
pkgd <- rpd[rpd$Package == "rmelting", ]$Version

colr <- ifelse(pkgr == "missing", "lightgrey", "brightgreen")
cold <- ifelse(pkgd == "missing", "lightgrey", "orange")



bcr_badge <- paste0("https://img.shields.io/badge/",
                    "Bioconductor%20release", "-", bcr, "-", colr, ".svg")
download.file(bcr_badge, destfile = "bcr_badge.svg")

bcd_badge <- paste0("https://img.shields.io/badge/",
                    "Bioconductor%20devel", "-", bcd, "-", cold, ".svg")
download.file(bcd_badge, destfile = "bcd_badge.svg")

pkgr_badge <- paste0("https://img.shields.io/badge/",
                     "BioC%20release", "-", pkgr, "-", colr, ".svg")
download.file(pkgr_badge, destfile = "pkgr_badge.svg")

pkgd_badge <- paste0("https://img.shields.io/badge/",
                     "BioC%20devel", "-", pkgd, "-", cold, ".svg")
download.file(pkgd_badge, destfile = "pkgd_badge.svg")
