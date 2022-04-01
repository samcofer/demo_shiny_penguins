rsconnect::deployApp(
    appDir = "app",
    appFiles = c("app.R"),
    appName = "demo-palmers-penguins-shiny-r-console-deploy",
    appTitle = "Demo - Palmers Penguins [Shiny / R Console Deploy]",
    account = "sam.edwardes",
    server = "colorado.rstudio.com"
)


rsconnect::connectApiUser(account = "sam.edwardes", server = "colorado.rstudio.com", apiKey={{ env.RSCONNECT_APIKEY }})


rsconnect::addServer(url = "https://colorado.rstudio.com/rsc/__api__", name = "colorado.rstudio.com")
rsconnect::connectApiUser(account = "abasssssd", server = "colorado.rstudio.com", apiKey = Sys.getenv("CONNECT_API_KEY"))
rsconnect::deployApp(addDir = "app", appFiles = c("app.R"), appName = "demo-palmers-penguins-shiny-github-actions-deploy", appTitle = "Demo - Palmers Penguins [Shiny / GitHub Actions Deploy]", forceUpdate = TRUE)