% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_import_data.R
\name{import_datamart}
\alias{import_datamart}
\title{Import a datamart}
\usage{
import_datamart(
  output,
  r = shiny::reactiveValues(),
  datamart_id = integer(),
  data = tibble::tibble(),
  type = "patients",
  save_as_csv = TRUE,
  rewrite = FALSE,
  language = "EN"
)
}
\arguments{
\item{output}{variable from Shiny, used to render messages on the message bar}

\item{r}{The "petit r" object, used to communicate between modules in the ShinyApp (reactiveValues object)}

\item{datamart_id}{ID of the datamart, used to create directory in data/ (eg : datamart_3)}

\item{data}{data variable (data.frame or tibble)}

\item{type}{type or name of data to create c("patients", "stays", "labs_vitals", "text", "orders")}

\item{save_as_csv}{save or not the data to CSV file (logical, default = TRUE)}

\item{rewrite}{if save_as_csv is TRUE, rewrite or not existing CSV file (logical, default = FALSE)}

\item{language}{language used for error / warning messages (character, default = "EN")}
}
\description{
Load +/- save data when a datamart is chosen by the user.
}
\details{
The function is used in a datamart code and is launched each time a user selects a datamart. \cr
You can choose to \strong{load data each time} the function is used with save_as_csv set to FALSE (eg when datamart is small and the
connection to source database is good) or you can \strong{save the data in a CSV file} with save_as_csv set to TRUE. \cr
Basically, 5 data variables are created for each datamart (distinct values of 'type' parameter).\cr\cr
Columns needed for each data type :\cr\cr
\strong{type = "patients"} :\cr
\itemize{
\item{patient_id = integer}
\item{gender = character}
\item{age = numeric}
\item{dod = datetime}
}
\strong{type = "stays"} :\cr
\itemize{
\item{patient_id = integer}
\item{stay_id = integer}
\item{unit_name = character}
\item{admission_datetime = datetime}
\item{discharge_datetime = datetime}
}
\strong{type = "labs_vitals"} :\cr
\itemize{
\item{patient_id = integer}
\item{thesaurus_name = character}
\item{item_id = integer}
\item{datetime_start = datetime}
\item{datetime_stop = datetime}
\item{value = character}
\item{value_num = numeric}
\item{unit = character}
\item{comments = character}
}
\strong{type = "text"} :\cr
\itemize{
\item{patient_id = integer}
\item{thesaurus_name = character}
\item{item_id = integer}
\item{datetime_start = datetime}
\item{datetime_stop = datetime}
\item{value = character}
\item{comments = character}
}
\strong{type = "orders"} :\cr
\itemize{
\item{patient_id = integer}
\item{thesaurus_name = character}
\item{item_id = integer}
\item{datetime_start = datetime}
\item{datetime_stop = datetime}
\item{route = character}
\item{continuous = integer}
\item{amount = numeric}
\item{amount_unit = character}
\item{rate = numeric}
\item{rate_unit = character}
\item{concentration = numeric}
\item{concentration_unit = character}
\item{comments = character}
}
}
\examples{
\dontrun{
patients <- tibble::tribble(~patient_id, ~gender, ~age, ~dod, 44565L, "F", 45, "2021-05-01 00:00:00") \%>\%
  dplyr::mutate_at("dod", lubridate::ymd_hms)
    
import_datamart(output = output, r = r, datamart_id = 5, data = patients, type = "patients", 
  save_as_csv = FALSE, rewrite = FALSE, language = language)
}
}
