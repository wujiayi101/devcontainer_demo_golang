FROM golang:1.21 AS builder

ENV CGO_ENABLED=0

WORKDIR /app
COPY ./app /app

RUN go mod tidy
RUN go mod vendor
RUN go build -ldflags "-s -w" -o "./bin/server"

FROM alpine:3.18.4

ARG COMMIT="n/a"

ENV COMMIT=${COMMIT}

COPY --from=builder /app/bin/server /app/server

EXPOSE 80

WORKDIR /app

CMD ["./server"]
