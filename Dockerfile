FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bwa \
        samtools \
        ncbi-blast+ \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY probe-designer-linux.bin /app/probe-designer
RUN chmod +x /app/probe-designer

ENTRYPOINT ["/app/probe-designer"]
