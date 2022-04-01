rsconnect::deployApp(
    appDir = "app",
    appFiles = c("app.R"),
    appName = "demo-palmers-penguins-shiny-r-console-deploy",
    appTitle = "Demo - Palmers Penguins [Shiny / R Console Deploy]",
    account = "sam.edwardes",
    server = "colorado.rstudio.com"
)


rsconnect::connectApiUser(account = "sam.edwardes", server = "https://colorado.rstudio.com/rsc", apiKey={{ env.RSCONNECT_APIKEY }})
rsconnect::deployApp(addDir = "app", appFiles = c("app.R"), appName = "demo-palmers-penguins-shiny-github-actions-deploy", appTitle = "Demo - Palmers Penguins [Shiny / GitHub Actions Deploy]", forceUpdate = TRUE)