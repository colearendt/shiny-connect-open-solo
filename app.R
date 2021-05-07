library(shiny)

js_helpers <- "
function is_solo() {
  alert(window.location.href == window.top.location.href)
}
"

ui <- fluidPage(

    titlePanel("Determine if Open Solo"),
    tags$script(HTML(js_helpers)),

    sidebarLayout(
        sidebarPanel(
        ),

        mainPanel(
            htmltools::tags$button(
                "Is this open solo?",
                onclick = "is_solo();"
            )
        )
    )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
