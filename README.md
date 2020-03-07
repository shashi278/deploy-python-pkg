# deploy-python-pkg
Easily deploy your python packages to PyPI


### Simple usage
Add a `step` under `deploy` job in your workflow.

```yaml
jobs:
  deploy:
    name: Deployment Action
    runs-on: ubuntu-latest
    steps:
      .......
      .......
      - name: Deploy to PyPI
              uses: ./
              with:
                TOKEN: "Your PyPI password or API Token"
```
