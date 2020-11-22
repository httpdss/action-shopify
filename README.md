# Deploy Shopify theme for GitHub Actions

This GitHub action is part of a list of my Actions : https://github.com/httpdss/actions.

**A GitHub Actions+Shopify workflow was proposed here : https://github.com/freyum/shopify-workflow-poc**

## Usage

To use the action simply add the following lines to your workflow .yml file.

```yaml
  steps:
      - uses: actions/checkout@v1
      - name: Shopify
        uses: httpdss/action-shopify@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_ENV: staging
...


### Required Secrets

First you have to generate a private app to get an API KEY on Shopify. [Get API Access](https://shopify.github.io/themekit/#get-api-access).

Then you'll need to provide some secrets to use the action.

* **SHOPIFY_PASSWORD**: Your password from your private app previously created.
* **SHOPIFY_ENV**: Your store environment. (e.g. `staging or production. set on config.yml`).

### Optional Arguments

The optional argument you can add to improve theme deployment. Optional args are available on [Theme Kit help](https://shopify.github.io/themekit/configuration/#flags).

#### Examples

```yaml
...
  steps:
      - uses: actions/checkout@v1
      - name: Shopify
        uses: httpdss/action-shopify@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_ENV: staging
        with:
          args: --ignored-file=sections/*
```

Your can also combine multiple arguments :

```yaml
...
  steps:
      - uses: actions/checkout@v1
      - name: Shopify
        uses: httpdss/action-shopify@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_ENV: staging
        with:
          args: --ignored-file=sections/* --timeout=30
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
