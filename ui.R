shinyUI(
  pageWithSidebar(
    headerPanel("Geography Lesson"),
      sidebarPanel(
        p("by lt80595@gmail.com"),
        h4("Knowledge of Geography is essential in the global workforce.
           Here is an application regarding Middle Eastern Geography."),
        h3("Where is Doha?"),
        checkboxGroupInput("id2", "Select Only One:",
        c("In Egypt?" = "Egypt",
          "In Iraq?" = "Iraq",
          "In Qatar?" = "Qatar",
          "In Yemen?" = "Yemen")),
        actionButton("goButton", "Check Answer"),
        verbatimTextOutput("text3"),
        p("The R package MAPS was used to create this application")
      ),
    mainPanel(
      h4("You entered"),
      verbatimTextOutput("oid2"),
      plotOutput("DohaMap"),
      h4("Answer"),
      verbatimTextOutput("text4")
      )
    )
  )
