# cpdfsqueeze-action

> :octocat: GitHub Action to reduce the size of PDFs by cpdfsqueeze

This action allows to compress PDFs using [cpdfsqueeze](https://github.com/johnwhitington/cpdfsqueeze) (License: [`LGPL-2.1-or-later`](https://tldrlegal.com/license/gnu-lesser-general-public-license-v2.1-(lgpl-2.1))).
This repository both provides a GitHub action and a Docker image.

The Docker image is published to <https://hub.docker.com/repository/docker/koppor/cpdfsqueeze>.

Alternatives to shrink the size of the PDF are:

- Ghostscript, most commonly [shrink.sh](http://www.alfredklomp.com/programming/shrinkpdf/) is used.
  The drawback is that PDF bookmarks and the initial page view are currently lost.
- pdfsizeopt, where [rbrito/pdfsizeopt](https://github.com/rbrito/pdfsizeopt) is currently the maintained fork.
  As of 2021-04-19, there is no updated Docker image.
  See <https://github.com/rbrito/pdfsizeopt/issues/6> for details.

## Action Usage

### Inputs

* `input_file`

    The name of the PDF file to reduce the file size

* `output_file`

    The name of the target PDF file

## Available versions

* `@v1` latest v1.x release
* `@latest` points to the latest release
* `@edge` is the latest development version

### Example usage

```yaml
uses: koppor/cpdfsqueeze-action@v1
with:
  input_file: 'main.pdf'
  output_file: 'main-small.pdf'
```

## Docker Image Usage

```terminal
docker run -v "C:\temp\test:/workdir" koppor/cpdfsqueeze cpdfsqueeze main.pdf main-small.pdf
```

## License

MIT
