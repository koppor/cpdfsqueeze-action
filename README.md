# cpdfsqueeze-action

> :octocat: GitHub Action to reduce the size of PDFs by cpdfsqueeze

This action is based on [cpdfsqueeze](https://github.com/johnwhitington/cpdfsqueeze).

## Inputs

* `input_file`

    The name of the PDF file to reduce the file size

* `output_file`

    The name of the target PDF file

## Available versions

| Version | GitHub branch/tag | Note |
| -- | -- |
| `@v1` | branch: `v1` | latest v1.x release |
| `@latest` | branch: `latest` | points to the latest release |
| `@edge` | branch: `edge`| latest development version |

Since `@v1` and `@latest` change after a new release and git tags should NOT change once published, we decided to use branches.

## Example usage

```yaml
uses: koppor/cpdfsqueeze-action@v1
with:
  input_file: 'main.pdf'
  output_file: 'main-small.pdf'
```

## License

MIT
