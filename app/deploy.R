rsconnect::deployApp(
    appDir = "app",
    appFiles = c("app.R"),
    appName = "demo-palmers-penguins-shiny-r-console-deploy",
    appTitle = "Demo - Palmers Penguins [Shiny / R Console Deploy]",
    account = "sam.edwardes",
    server = "colorado.rstudio.com"
)


rsconnect::connectApiUser(account = "sam.edwardes", server = "colorado.rstudio.com", apiKey={{ env.RSCONNECT_APIKEY }})

# TEST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
server_nickname <- "colorado.rstudio.com"

rsconnect::addServer(
  url = "https://colorado.rstudio.com/rsc/", 
  name = server_nickname
)

rsconnect::connectUser(account = "sam.edwardes", server = server_nickname)

# TEST <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

rsconnect::connectApiUser(
  apiKey = Sys.getenv("CONNECT_API_KEY"), 
  server = server_nickname
)

rsconnect::deployApp(
  addDir = "app", 
  appFiles = c("app.R"), 
  appName = "demo-palmers-penguins-shiny-github-actions-deploy", 
  appTitle = "Demo - Palmers Penguins [Shiny / GitHub Actions Deploy]", 
  forceUpdate = TRUE
)