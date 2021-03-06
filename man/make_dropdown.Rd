% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_layout_functions.R
\name{make_dropdown}
\alias{make_dropdown}
\title{Make a shiny.fluent dropdown}
\usage{
make_dropdown(
  language = "EN",
  ns = shiny::NS(),
  label = character(),
  options = list(),
  multiSelect = FALSE,
  id = NA_character_,
  value = NULL,
  width = NULL,
  words = tibble::tibble()
)
}
\arguments{
\item{language}{Language used (character)}

\item{ns}{Shiny namespace}

\item{label}{Label used for the input (character)}

\item{options}{Options available for the dropdown (list)}

\item{multiSelect}{Is multiselection of options is possible ? (logical)}

\item{id}{ID used for the input (character)}

\item{value}{Value of the dropdown (character)}

\item{width}{Width of the dropdown, CSS code so "300px" or "100\%" are accepted}
}
\description{
Make a shiny.fluent dropdown
}
\examples{
\dontrun{
options <- list(
  list(key = "my_key1", text = "my_text1"),
  list(key = "my_key2", text = "my_text2")
)
make_dropdown(language = "EN", ns = NS("settings_datamarts"), label = "my_dropdown", id = "my_dropdown",
  options = options, multiSelect = FALSE, value = "my_key1", width = "100\%")
}
}
