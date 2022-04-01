rsconnect::deployApp(
    appDir = "app",
    appFiles = c("app.R"),
    appName = "demo-palmers-penguins-shiny-r-console-deploy",
    appTitle = "Demo - Palmers Penguins [Shiny / R Console Deploy]",
    account = "sam.edwardes",
    server = "colorado.rstudio.com"
)


rsconnect::connectApiUser(account = "sam.edwardes", server = "colorado.rstudio.com", apiKey={{ env.RSCONNECT_APIKEY }})

rsconnect::connectApiUser(account = "xxx", server = "https://colorado.rstudio.com", apiKey = "Z8uMvm13rcEprf8pUgehclbOgjKRsoi5")

rsconnect::deployApp(addDir = "app", appFiles = c("app.R"), appName = "demo-palmers-penguins-shiny-github-actions-deploy", appTitle = "Demo - Palmers Penguins [Shiny / GitHub Actions Deploy]", forceUpdate = TRUE)