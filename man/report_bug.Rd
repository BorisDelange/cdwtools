% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_settings_log.R
\name{report_bug}
\alias{report_bug}
\title{Add log entry - report bug}
\usage{
report_bug(
  r = shiny::reactiveValues(),
  output,
  error_message = character(),
  error_name = character(),
  category = character(),
  error_report = character(),
  language = "EN"
)
}
\arguments{
\item{r}{Shiny r reactive value, used to communicate between modules}

\item{output}{Shiny output variable}

\item{error_message}{Error message that will be displayed to user, after translation (character())}

\item{error_name}{Name of the error, to add an entry in the log table (character)}

\item{category}{Category : error or warning ? (character)}

\item{error_report}{Report of the error (character)}

\item{language}{Language used for translations (character)}
}
\description{
Add log entry - report bug
}
