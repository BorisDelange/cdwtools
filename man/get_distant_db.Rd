% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_settings_app_database.R
\name{get_distant_db}
\alias{get_distant_db}
\title{Connection to distant database}
\usage{
get_distant_db(
  local_db,
  db_info = list(),
  language = "EN",
  words = tibble::tibble()
)
}
\arguments{
\item{local_db}{DBI db object of local database}

\item{language}{Language used to display messages (character)}
}
\description{
Get a connection to a distant database. If the distant connection fails, returns local DBI connection object.
}
