# Stage 1 — build the Go binary
FROM golang:1.26-alpine AS builder

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o skillpulse-backend .

# Stage 2 — distroless final image

FROM gcr.io/distroless/static-debian12

WORKDIR /app

COPY --from=builder /app/skillpulse-backend .

EXPOSE 8080

ENTRYPOINT ["/app/skillpulse-backend"]
