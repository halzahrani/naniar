% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miss-x-run.R
\name{miss_var_run}
\alias{miss_var_run}
\title{Find the number of missing and complete values in a single run}
\usage{
miss_var_run(data, var)
}
\arguments{
\item{data}{data.frame}

\item{var}{a bare variable name}
}
\value{
dataframe with column names "run_length" and "is_na", which describe
the length of the run, and whether that run describes a missing value.
}
\description{
It us useful to find the number of missing values that occur in a single run.
The function, \code{miss_var_run()}, returns a dataframe with the column names
"run_length" and "is_na", which describe the length of the run, and
whether that run describes a missing value.
}
\examples{

miss_var_run(pedestrian, hourly_counts)

library(dplyr)

# find the number of runs missing/complete for each month

pedestrian \%>\%
  group_by(month) \%>\%
  miss_var_run(hourly_counts)

library(ggplot2)

# explore the number of missings in a given run
miss_var_run(pedestrian, hourly_counts) \%>\%
  filter(is_na == "missing") \%>\%
  count(run_length) \%>\%
  ggplot(aes(x = run_length,
             y = n)) +
      geom_col()

# look at the number of missing values and the run length of these.
miss_var_run(pedestrian, hourly_counts) \%>\%
  ggplot(aes(x = is_na,
             y = run_length)) +
      geom_boxplot()

# using group_by
 pedestrian \%>\%
   group_by(month) \%>\%
   miss_var_run(hourly_counts)


}
\seealso{
\url{miss_case_pct} \url{miss_case_prop} \code{\link[=miss_prop_summary]{miss_prop_summary()}} \url{miss_case_summary} \url{miss_case_table} \url{miss_summary} \url{miss_var_pct} \url{miss_var_prop} \url{miss_var_span} \url{miss_var_summary} \url{miss_var_table}
}
