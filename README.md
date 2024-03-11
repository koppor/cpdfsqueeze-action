# cpdfsqueeze-action

> :octocat: GitHub Action to reduce the size of PDFs by cpdfsqueeze

This action allows to compress PDFs using [cpdfsqueeze](https://github.com/johnwhitington/cpdfsqueeze)
(License: [`LGPL-2.1-or-later`](https://tldrlegal.com/license/gnu-lesser-general-public-license-v2.1-(lgpl-2.1))).

## Inputs

* `input_file`

    The name of the PDF file to reduce the file size

* `output_file`

    The name of the target PDF file

## Available versions

| Version | GitHub branch/tag | Note |
| -- | -- | -- |
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

## Alternatives

Alternatives to shrink the size of the PDF are:

- Ghostscript, most commonly [shrink.sh](http://www.alfredklomp.com/programming/shrinkpdf/) is used.
  The drawback is that PDF bookmarks and the initial page view are currently lost.
- pdfsizeopt, where [rbrito/pdfsizeopt](https://github.com/rbrito/pdfsizeopt) is currently the maintained fork.
  As of 2021-04-19, there is no updated Docker image.
  See <https://github.com/rbrito/pdfsizeopt/issues/6> for details.

## License

MIT
