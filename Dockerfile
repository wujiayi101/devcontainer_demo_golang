# Base stage
FROM golang:1.22 AS base

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

RUN pip3 install pre-commit --break-system-packages

# Build Stage
FROM base AS builder

ENV CGO_ENABLED=0

WORKDIR /app
COPY ./app /app

RUN go mod tidy
RUN go mod vendor
RUN go build -ldflags "-s -w" -o "./bin/server"

FROM alpine:3.18.4 AS final

ARG COMMIT="n/a"

COPY --from=builder /app/bin/server /app/server

EXPOSE 80

WORKDIR /app

CMD ["./server"]
