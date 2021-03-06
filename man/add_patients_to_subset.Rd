% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_data_management.R
\name{add_patients_to_subset}
\alias{add_patients_to_subset}
\title{Add patients to a subset}
\usage{
add_patients_to_subset(
  output,
  r = shiny::reactiveValues(),
  patients = tibble::tibble(),
  subset_id = integer(),
  success_notification = TRUE,
  language = "EN"
)
}
\arguments{
\item{output}{Output variable from Shiny, used to render messages on the message bar}

\item{r}{The r reactive variable, used to communicate between modules in the ShinyApp (reactiveValues object)}

\item{patients}{data variable containing patients (data.frame / tibble)}

\item{subset_id}{ID of subset (integer)}

\item{success_notification}{Should a message bar be displayed if insertion of patient(s) is a success ? Default to TRUE}

\item{language}{language used for error / warning messages (character, default = "EN")}
}
\description{
Add patients to a subset, only if not already in the subset
}
\details{
...
}
\examples{
\dontrun{
patients <- tibble::tribble(~patient_id, 123L, 456L, 789L)
subset_add_patients(output = output, r = r, patients = patients, subset_id = 3, language = "EN")
}
}
