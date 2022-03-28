# demo-shiny-penguins

Palmer's penguins shiny dashboard demo.

![screenshot](./app-screenshot.png)

## Deployment

Changes to the main branch will automatically be deployed. Before commiting new changes you should update the *manifest.json* file:

```r
rsconnect::writeManifest("app")
```
