#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#' @import shiny
#' @noRd

app_ui <- function(request, css, page, language) {
  
  # Secure page with ShinyManager
  shinymanager::secure_app(
    tagList(
      golem_add_external_resources(css),
      shiny.fluent::fluentPage(page$ui)
    ),
    enable_admin = FALSE, language = tolower(language), fab_position = "none"
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd

golem_add_external_resources <- function(css){
  
  add_resource_path('www', app_sys('app/www'))
 
  tags$head(
    favicon(ext = "png"),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'cdwtools'
    ),
    # Link to CSS file
    htmltools::tags$link(href = css, rel = "stylesheet", type = "text/css"),
    
    # Shinyjs is used to show and hide message bars
    shinyjs::useShinyjs(),
    
    # Marker is used in text plugin, to highlight some text
    marker::useMarker(),
    
    # Shinybusy is used to add a busy bar on top of the page, when there are loading times
    shinybusy::add_busy_bar(timeout = 1000, color = "#0D98FF", height = "3px"),
    
    # A function to make info button works, on the header
    tags$script(
      "$(function() {
          $('.ms-Button--commandBar').on('click', function() {
            Shiny.setInputValue('header_active_page', $(this).attr('id'));
          })
        })"
    )
  )
}