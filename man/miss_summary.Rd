% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miss-x-summary.R
\name{miss_summary}
\alias{miss_summary}
\title{Collate summary measures from naniar into one tibble}
\usage{
miss_summary(data, order = TRUE)
}
\arguments{
\item{data}{a dataframe}

\item{order}{whether or not to order the result by n_miss}

\item{...}{extra arguments}
}
\value{
a tibble of missing data summaries
}
\description{
\code{miss_summary} performs all of the missing data helper summaries and puts
them into lists within a tibble
}
\examples{

s_miss <- miss_summary(airquality)
s_miss$miss_df_prop
s_miss$miss_case_table
s_miss$miss_var_summary
# etc, etc, etc.

library(dplyr)
s_miss_group <- group_by(airquality, Month) \%>\% miss_summary()
s_miss_group$miss_df_prop
s_miss_group$miss_case_table
# etc, etc, etc.


}
\seealso{
\url{miss_case_pct} \url{miss_case_prop} \code{\link[=miss_prop_summary]{miss_prop_summary()}} \url{miss_case_summary} \url{miss_case_table} \url{miss_var_pct} \url{miss_var_prop} \url{miss_var_run} \url{miss_var_span} \url{miss_var_summary} \url{miss_var_table}
}
