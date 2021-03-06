% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_data_management.R
\name{remove_patients_from_subset}
\alias{remove_patients_from_subset}
\title{Remove patients from a subset}
\usage{
remove_patients_from_subset(
  output,
  r = shiny::reactiveValues(),
  patients = tibble::tibble(),
  subset_id = integer(),
  language = "EN"
)
}
\arguments{
\item{output}{Output variable from Shiny, used to render messages on the message bar}

\item{r}{The r reactive variable, used to communicate between modules in the ShinyApp (reactiveValues object)}

\item{patients}{data variable containing patients (data.frame / tibble)}

\item{subset_id}{ID of subset (integer)}

\item{language}{language used for error / warning messages (character, default = "EN")}
}
\description{
Remove patients from a subset
}
\details{
...
}
