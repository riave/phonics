% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nysiis.R
\name{nysiis}
\alias{nysiis}
\title{New York State Identification and Intelligence System}
\usage{
nysiis(word, maxCodeLen = 6, modified = FALSE)
}
\arguments{
\item{word}{string or vector of strings to encode}

\item{maxCodeLen}{maximum length of the resulting encodings, in characters}

\item{modified}{if \code{TRUE}, use the modified NYSIIS algorithm}
}
\value{
the NYSIIS encoded character vector
}
\description{
The NYSIIS phonetic algorithm
}
\details{
The \code{nysiis} function phentically encodes the given
string using the New York State Identification and Intelligence
System (NYSIIS) algorithm. The algorithm is based on the
implementation provided by Wikipedia and is implemented in pure R
using regular expressions.

The variable \code{maxCodeLen} is the limit on how long the returned
NYSIIS code should be.  The default is 6.

The variable \code{modified} directs \code{nysiis} to use the
modified method instead of the original.
}
\section{Caveats}{

The \code{nysiis} algorithm is only
defined for inputs over the standard English alphabet, \emph{i.e.},
"A-Z." For inputs outside this range, the output is undefined.
}

\examples{
nysiis("Robert")
nysiis("rupert")
nysiis(c("Alabama", "Alaska"), modified = TRUE)
nysiis("mississippi", 4)

}
\references{
Robert L. Taft, \emph{Name search techniques}, Bureau of Systems
Development, Albany, New York, 1970.
}
\seealso{
Other phonics: \code{\link{caverphone}},
  \code{\link{cologne}}, \code{\link{lein}},
  \code{\link{metaphone}}, \code{\link{mra_encode}},
  \code{\link{onca}}, \code{\link{phonex}},
  \code{\link{rogerroot}}, \code{\link{soundex}},
  \code{\link{statcan}}
}
