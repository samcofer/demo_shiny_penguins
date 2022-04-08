# demo-shiny-penguins

Palmer's penguins shiny dashboard demo.

- Code: <https://github.com/SamEdwardes/demo-shiny-penguins>
- Deployment: <https://colorado.rstudio.com/rsc/demo-shiny-penguins/>

![screenshot](./imgs/app-screenshot.png)

## Usage

```r
shiny::runApp('app')
```

## Deployment

Update the code, and then run:

```r
rsconnect::writeManifest("app")
```

The app will be automatically redeployed by RStudio Connect.