\name{AQDMRS.query}
\alias{AQDMRS.query}
\title{AQDMRS.query}
\usage{
  AQDMRS.query(state, county, bdate,
    edate = as.Date(bdate) + 1, dur = 1, ...,
    user = readline("AQDMRS username: "),
    pw = readline("AQDMRS password: "), verbose = TRUE,
    eval = FALSE)
}
\arguments{
  \item{state}{Two-digit FIPS state code}

  \item{county}{Three-digit FIPS county code}

  \item{bdate}{beginning date (see \link{as.Date})}

  \item{edate}{ending date}

  \item{dur}{temporal resolution (1=hourly)}

  \item{\dots}{(optional) additional query parameters}

  \item{user}{AQRDMS username}

  \item{pw}{AQRDMS password}

  \item{verbose}{logical: be chatty?}

  \item{eval}{logical: be lazy (default) or force immediate
  evaluation?}
}
\description{
  Build a query (and, optionally, evaluate it)
}
\examples{
\dontrun{
  q <- AQDMRS.query(
    state = "06",          # California
    county = "001",        # Alameda
    site = "0011",         # West Oakland
    param = "42601",       # Nitric oxide (NO)
    bdate = "2012-01-01"
  )
  NO_data <- eval(q)
  q$param <- "42602"
  NO2_data <- eval(q)
}
}
\seealso{
  Other AQDMRS: \code{\link{AQDMRS.list}}
}

