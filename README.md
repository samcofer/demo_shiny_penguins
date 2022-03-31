# demo-shiny-penguins

Palmer's penguins shiny dashboard demo.

![](./imgs/app-screenshot.png)

## Deployment

There are several ways you can deploy a shiny app!

### Push Buttonn Deploy

![](./imgs/push-button-deploy.png)

### Deploy with Connect Git Integration

Changes to the main branch will automatically be deployed. Before commiting new changes you should update the *manifest.json* file:

```r
rsconnect::writeManifest("app")
```

### Deploy in R Console

```r
rsconnect::deployApp(
  appDir = "app",
  appFiles = c("app.R"),
  appName = "demo-palmers-penguins-shiny-r-console-deploy",
  appTitle = "Demo - Palmers Penguins [Shiny / R Console Deploy]",
  account = "sam.edwardes",
  server = "colorado.rstudio.com"
)
```

### Deploy with GitHub Actions

```r
rsconnect::deployApp(
  addDir = "app",
  appFiles = c("app.R"),
  appName = "demo-palmers-penguins-shiny-github-actions-deploy"
  appTitle = "Demo - Palmers Penguins [Shiny / GitHub Actions Deploy]"
)
```

### Deploy with GitHub Actions
