# cpdfsqueeze-action

> :octocat: GitHub Action to reduce the size of PDFs by cpdfsqueeze

This action allows to compress PDFs using [cpdfsqueeze](https://github.com/johnwhitington/cpdfsqueeze).
This repository both provides a GitHub action and a Docker image.

The Docker image is published to <https://hub.docker.com/repository/docker/koppor/cpdfsqueeze>.

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
