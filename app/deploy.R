rsconnect::deployApp(
    appDir = "app",
    appFiles = c("app.R"),
    appName = "demo-palmers-penguins-shiny-r-console-deploy",
    appTitle = "Demo - Palmers Penguins [Shiny / R Console Deploy]",
    account = "sam.edwardes",
    server = "colorado.rstudio.com"
)


rsconnect::deployApp(addDir = "app", appFiles = c("app.R"), appName = "demo-palmers-penguins-shiny-github-actions-deploy-3", appTitle = "Demo - Palmers Penguins [Shiny / GitHub Actions Deploy]")
