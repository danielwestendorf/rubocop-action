# Rubocop Action

Lint your Ruby code in parallel to your builds

![](screenshots/annotations.png)


## Setup
```yml
# .github/workflows/lint.yml

name: Lint

on: [push]

jobs:

  lint:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Rubocop checks
      uses: danielwestendorf/rubocop-action@1.1
      env:
        BUNDLED_RUBOCOP: true
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

```
