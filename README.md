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

### Deploy in the R console

```r
rsconnect::deployApp()
```

### Deploy with GitHub Actions
