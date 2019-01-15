
#' Compute melting temperature of a multiple nucleic acid duplexes in batch
#'
#' @param sequence A character vector of 5' to 3' sequences of one strand of the
#'   nucleic acid duplex (\strong{Note:} Uridine and thymidine are not
#'   considered as identical).
#' @param comp.sequence A character vector of 3' to 5' complementary sequences
#'   of the nucleic acid duplex. Complementary sequences are computed by
#'   default, but need to be specified in case of mismatches, inosine(s) or
#'   hydroxyadenine(s) between the two strands.
#' @param environment.out logical. If \code{TRUE}, gives the melting temperature
#'   computation environment details in the output. Default is \code{TRUE}.
#' @param options.out logical. If \code{TRUE}, gives the details about the
#'   options (default or user specified) used for melting temperature
#'   computation in the output. Default is \code{TRUE}.
#' @param message.out logical. If \code{TRUE}, gives the error and/or warning
#'   messages, if any in the output. Default is \code{TRUE}.
#' @param ... Arguments for melting temperature computation (See
#'   \code{\link[rmelting]{melting}}).
#'
#' @return A data frame of the melting temperature computation results along
#'   with the details of environment, options and messages if specified by the
#'   arguments \code{environment.out}, \code{options.out} and \code{message.out}
#'   respectively.
#' @export
#'
#' @seealso \code{\link[rmelting]{melting}}
#'
#' @examples
#' sequence <- c("CAAAAAG", "CAAAAAAG", "TTTTATAATAAA", "CCATCGCTACC",
#'               "CAAACAAAG", "CCATTGCTACC", "CAAAAAAAG", "GTGAAC", "AAAAAAAA",
#'               "CAACTTGATATTATTA", "CAAATAAAG", "GCGAGC", "GGGACC",
#'               "CAAAGAAAG", "CTGACAAGTGTC", "GCGAAAAGCG")
#'
#' meltingBatch(sequence, nucleic.acid.conc = 0.0004,
#'              hybridisation.type = "dnadna", Na.conc = 1)
#'
#' seq <- c("GCAUACG", "CAGUAGGUC", "CGCUCGC", "GAGUGGAG", "GACAGGCUG",
#'          "CAGUACGUC", "GACAUCCUG", "GACCACCUG", "CAGAAUGUC", "GCGUCGC",
#'          "CGUCCGG", "GACUCUCUG", "CAGCUGGUC", "GACUAGCUG", "CUCUGCUC",
#'          "GCGUCCG", "GUCCGCG", "CGAUCAC", "GACUACCUG", "GACGAUCUG")
#'
#' comp.seq <- c("CGUUUGC", "GUCGGCCAG", "GCGUGCG", "CUCUUCUC", "CUGUGCGAC",
#'               "GUCGGGCAG", "CUGUUGGAC", "CUGGGGGAC", "GUCUGGCAG", "CGCUGCG",
#'               "GCUGGCC", "CUGAUAGAC", "GUCGUUCAG", "CUGAGCGAC", "GAGUUGAG",
#'               "CGCUGGC", "CUGGCGC", "GCUUGUG", "CUGAGGGAC", "CUGCCAGAC")
#'
#' meltingBatch(sequence = seq, comp.seq = comp.seq, nucleic.acid.conc = 0.0004,
#'              hybridisation.type = "rnarna", Na.conc = 1,
#'              method.singleMM = "tur06")
#'
meltingBatch <- function(sequence, comp.sequence = NULL,
                         environment.out = TRUE, options.out = TRUE,
                         message.out = TRUE,
                         ...) {

  # Check if sequence is of type character
  if (!is.character(sequence)) {
    stop("'sequence' should be a character vector.")
  }

  subs <- c("Environment", "Options",
            "Results", "Message")[c(environment.out, options.out,
                                    TRUE, message.out)]

  if (!is.null(comp.sequence)) { # with both 'sequence' and 'comp.sequence'

    # Check if complementary sequence is of type character
    if (!is.character(comp.sequence)) {
      stop("'comp.sequence' should be a character vector.")
    }

    # Check if sequence and complementary sequence are of equal length
    if (length(comp.sequence) != length(sequence)) {
      stop("'sequence' and 'comp.sequence' are not of equal length.")
    }

    out <- t(data.frame(lapply(mapply(melting, sequence = sequence,
                                      comp.sequence = comp.sequence,
                                      MoreArgs = ..., SIMPLIFY = FALSE),
                               function(x) unlist(x[subs]))))

  } else { # with one 'sequence'
    out <- t(data.frame(lapply(sequence,
                               function(x) unlist(melting(sequence = x,
                                                          ...)[subs]))))
  }

  rownames(out) <- NULL
  return(out)
}
