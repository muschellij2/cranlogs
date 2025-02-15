% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cranlogs.R
\name{cran_top_downloads}
\alias{cran_top_downloads}
\title{Top downloaded packages from the RStudio CRAN mirror}
\usage{
cran_top_downloads(when = c("last-day", "last-week", "last-month"), count = 10)
}
\arguments{
\item{when}{\code{last-day}, \code{last-week} or \code{last-month} (see 
details).}

\item{count}{Number of packages to list. Note that the DB server
lists only at most 100 packages. This number might change in the
future.}
}
\value{
A data frame with columns: \code{rank}, \code{package},
  \code{count}, \code{from}, \code{to}.
}
\description{
Top downloaded packages from the RStudio CRAN mirror
}
\details{
\code{last-day} is the last day for which data is available,
 \code{last-week} is from 6 days prior to that last day with data, 
 \code{last-month} is from 29 days prior to that last day with data.
 
 0 counts can be due to the non-availability of data on the RStudio server 
 for that day.
}
\examples{
\dontrun{
## Default is last day for which data is available.
cran_top_downloads()

## Last week (6 days prior to the last day for which data is available) 
## instead
cran_top_downloads(when = "last-week")
}

}
\seealso{
Other CRAN downloads: 
\code{\link{cran_downloads}()}
}
\concept{CRAN downloads}
