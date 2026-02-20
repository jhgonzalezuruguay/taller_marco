library(shiny)

ui <- navbarPage("Taller de Marco Teórico - Mag. José González",
                                  
                                  tags$head(
                                    tags$style(HTML("
                     
                     /* Botones normales */
                     .btn,
                     .btn-default,
                     .btn-primary {
                       background-color: #90EE90 !important;
                       border-color: #90EE90 !important;
                       color: black !important;
                       background-image: none !important;
                     }
                     
                     /* Estados hover, focus y active */
                     .btn:hover,
                     .btn:focus,
                     .btn:active,
                     .btn-default:hover,
                     .btn-default:focus,
                     .btn-default:active,
                     .btn-primary:hover,
                     .btn-primary:focus,
                     .btn-primary:active {
                       background-color: #90EE90 !important;
                       border-color: #90EE90 !important;
                       color: black !important;
                       box-shadow: none !important;
                       outline: none !important;
                     }
                     
                   "))
                                  ),                 
                 # --------------------------
                 # CAPÍTULO III
                 # --------------------------
                 tabPanel("Marco Teórico",
                          h3("El marco teórico"),
                          
                          h4("Conceptos clave"),
                          tags$ul(
                            tags$li("El marco teórico constituye un eje central en la investigación. Aporta los conceptos, teorías y antecedentes que permiten fundamentar el problema de investigación, diseñar hipótesis y orientar la recolección y análisis de datos."),
                            tags$li("Relaciona la investigación con estudios previos y evita duplicación."),
                            tags$li("Elaborar el marco teórico implica analizar y exponer teorías, enfoques, investigaciones y antecedentes válidos para encuadrar el estudio."),
                            tags$li("Funciones: conduce a la formulación de hipótesis, proporciona conceptos a operacionalizar, orienta la estrategia metodológica y provee un marco interpretativo a los resultados."),
                            tags$li("Los conceptos son abstracciones que permiten construir el objeto de investigación.")
                          ),
                          br(),
                          h4("Diferencias entre Marco Teórico, Marco Conceptual y Antecedentes"),
                          tags$table(
                            style = "width:100%; border-collapse: collapse; margin-top: 10px;",
                            tags$tr(
                              tags$th("Nivel", style = "border: 1px solid black; padding: 6px; background-color: #f2f2f2;"),
                              tags$th("Ejemplo en Acceso a la Justicia", style = "border: 1px solid black; padding: 6px; background-color: #f2f2f2;")
                            ),
                            tags$tr(
                              tags$td("Marco Teórico", style = "border: 1px solid black; padding: 6px;"),
                              tags$td("Teorías sobre igualdad de acceso, justicia distributiva, derechos fundamentales", style = "border: 1px solid black; padding: 6px;")
                            ),
                            tags$tr(
                              tags$td("Marco Conceptual", style = "border: 1px solid black; padding: 6px;"),
                              tags$td("Conceptos: 'barreras de acceso', 'defensa pública', 'justicia inclusiva'", style = "border: 1px solid black; padding: 6px;")
                            ),
                            tags$tr(
                              tags$td("Antecedentes", style = "border: 1px solid black; padding: 6px;"),
                              tags$td("Investigaciones previas sobre acceso a la justicia laboral y familiar en Uruguay", style = "border: 1px solid black; padding: 6px;")
                            )
                          ),
                          
                          br(), br(),
                          
                          # --- Quiz ---
                          h4("Quiz"),
                          radioButtons("qMarco", 
                                       "¿Cuál es la función principal del marco teórico?",
                                       choices = list(
                                         "Justificar y contextualizar el problema" = "a",
                                         "Sustituir los resultados" = "b",
                                         "Evitar formular hipótesis" = "c"
                                       ),
                                       selected = character(0)),
                          actionButton("submitMarco", "Responder"),
                          textOutput("feedbackMarco"),
                          
                          br(), br(),
                          
                          # --- Actividad práctica individual ---
                          h4("Actividad práctica individual"),
                          p("Ejercicio: Identifica tres conceptos clave para elaborar un marco teórico sobre 'Acceso a la Justicia', u otro tema de tu interés."),
                          textAreaInput("conceptosAcceso", "Escribe tus conceptos clave:", width = "100%", height = "80px"),
                          actionButton("solConceptos", "Ver respuesta sugerida"),br(),
                          textOutput("respConceptos"),br(),br(),
                          downloadButton("downloadConceptos", "Descargar mis conceptos en .txt"),
                          
                          br(),br(),
                          
                          # --- Actividad práctica grupal ---
                          h4("Actividad práctica grupal"),
                          p("En grupo, seleccionen un tema y construyan un esquema de marco teórico."),
                          tags$ul(
                            tags$li("¿Qué teorías pueden fundamentar el estudio?"),
                            tags$li("¿Qué conceptos son centrales?"),
                            tags$li("¿Qué antecedentes existen?")
                          ),
                          
                          br(),
                          
                          # --- Actividad de desarrollo de un marco teórico ---
                          h4("Actividad domiciliaria de desarrollo de un marco teórico"),
                          p("Construye un marco teórico breve para un tema de tu interés incluyendo:"),
                          tags$ul(
                            tags$li("Una teoría que lo fundamente."),
                            tags$li("Tres conceptos clave."),
                            tags$li("Dos antecedentes relevantes.")
                          ),
                          textAreaInput("marcoAcceso", "Escribe tu marco teórico:", width = "100%", height = "120px"),
                          downloadButton("downloadMarco", "Descargar mi marco teórico en .txt"),
                          
                          br(), br(), br(),
                          
                          # --- Nueva actividad: análisis crítico ---
                          h4("Actividad de análisis crítico"),
                          tags$blockquote("El acceso a la justicia es relevante porque es un tema actual y muchas personas hablan de él."),
                          radioButtons("analisisCritico",
                                       "¿Qué problema presenta?",
                                       choices = list(
                                         "Carece de fundamentación teórica" = "a",
                                         "Está correctamente desarrollado" = "b",
                                         "Incluye suficientes antecedentes" = "c"
                                       ),
                                       selected = character(0)),
                          actionButton("verAnalisis", "Evaluar"),
                          textOutput("feedbackAnalisis"),
                          
                          br(), br(), br(),
                          
                          # --- Nueva actividad: asociación ---
                          h4("Actividad de asociación"),
                          selectInput("asoc1", "Marco Teórico se relaciona con:", 
                                      choices = c("", "Fundamentación conceptual", "Resultados obtenidos", "Opiniones personales")),
                          selectInput("asoc2", "Antecedentes se relacionan con:", 
                                      choices = c("", "Investigaciones previas", "Hipótesis futuras", "Conclusiones finales")),
                          actionButton("verAsociacion", "Verificar asociación"),
                          textOutput("feedbackAsociacion"),
                          
                          br(),br(),br(),
                          
                          # --- Nueva actividad: verdadero/falso ---
                          h4("Verdadero o Falso"),
                          checkboxGroupInput("vfMarco",
                                             "Selecciona las afirmaciones correctas:",
                                             choices = list(
                                               "El marco teórico orienta la metodología" = "a",
                                               "El marco teórico reemplaza los resultados" = "b",
                                               "Permite interpretar los hallazgos" = "c"
                                             )),
                          actionButton("verVF", "Verificar"),
                          textOutput("feedbackVF"),
                          
                          br(),br(),br(),
                        
                          # --- Flashcards ---
                          h4("Flashcards: Marco Teórico"),
                          actionButton("flashMT", "Ver definición de Marco Teórico"),br(),
                          textOutput("cardMT"),br(),br(),
                          actionButton("flashMC", "Ver definición de Marco Conceptual"),br(),
                          textOutput("cardMC"),br(),br(),
                          actionButton("flashAnt", "Ver definición de Antecedentes"),br(),
                          textOutput("cardAnt")
                 ),br(),br(),
)

server <- function(input, output, session) {
  
  observeEvent(input$submitMarco, {
    if (!is.null(input$qMarco) && input$qMarco != "") {
      if (input$qMarco == "a") {
        output$feedbackMarco <- renderText("¡Correcto!")
      } else {
        output$feedbackMarco <- renderText("Incorrecto. La función principal es justificar y contextualizar el problema.")
      }
    } else {
      output$feedbackMarco <- renderText("Selecciona una opción antes de responder.")
    }
  })
  
  observeEvent(input$solConceptos, {
    output$respConceptos <- renderText("Respuesta sugerida: 'barreras de acceso', 'defensa pública', 'justicia inclusiva'.")
  })
  
  output$downloadConceptos <- downloadHandler(
    filename = function() { "mis_conceptos.txt" },
    content = function(file) {
      writeLines(input$conceptosAcceso, file)
    }
  )
  
  output$downloadMarco <- downloadHandler(
    filename = function() { "mi_marco_teorico.txt" },
    content = function(file) {
      writeLines(input$marcoAcceso, file)
    }
  )
  
  observeEvent(input$verAnalisis, {
    if (!is.null(input$analisisCritico) && input$analisisCritico != "") {
      if (input$analisisCritico == "a") {
        output$feedbackAnalisis <- renderText("Correcto.")
      } else {
        output$feedbackAnalisis <- renderText("Revisa la fundamentación.")
      }
    } else {
      output$feedbackAnalisis <- renderText("Selecciona una opción antes de responder.")
    }
  })
  
  observeEvent(input$verAsociacion, {
    if (input$asoc1 == "Fundamentación conceptual" && input$asoc2 == "Investigaciones previas") {
      output$feedbackAsociacion <- renderText("¡Correcto!")
    } else {
      output$feedbackAsociacion <- renderText("Revisa las asociaciones.")
    }
  })
  
  observeEvent(input$verVF, {
    correct <- c("a","c")
    if (all(input$vfMarco %in% correct) && length(input$vfMarco)==2) {
      output$feedbackVF <- renderText("¡Correcto!")
    } else {
      output$feedbackVF <- renderText("Revisa las afirmaciones correctas.")
    }
  })
  
  observeEvent(input$flashMT, {
    output$cardMT <- renderText("Marco Teórico: conjunto de teorías y enfoques que fundamentan el problema de investigación.")
  })
  
  observeEvent(input$flashMC, {
    output$cardMC <- renderText("Marco Conceptual: conceptos clave que delimitan el objeto de estudio.")
  })
  
  observeEvent(input$flashAnt, {
    output$cardAnt <- renderText("Antecedentes: investigaciones previas relacionadas con el tema.")
  })
}

shinyApp(ui, server)

