FROM debian:stable-20210408-slim AS BUILDER
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TERM=dumb
RUN apt-get update && \
    apt-get install -y build-essential git ocaml-nox ocaml-findlib libcamlpdf-ocaml-dev
WORKDIR /tmp
RUN git clone --depth=1 https://github.com/johnwhitington/cpdfsqueeze.git
WORKDIR /tmp/cpdfsqueeze
RUN make

FROM debian:stable-20210408-slim
COPY --from=builder /tmp/cpdfsqueeze/cpdfsqueeze /usr/bin
COPY entrypoint.sh /entrypoint.sh
RUN mkdir /workdir
WORKDIR /workdir
CMD ["cpdfsqueeze", "--help"]
