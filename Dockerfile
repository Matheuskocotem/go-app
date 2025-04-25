FROM golang:1.20 AS build

WORKDIR /app

COPY . .

# Disable CGO and build a statically linked binary
ENV CGO_ENABLED=0
RUN go build -o main .

# Final stage
FROM alpine:latest

WORKDIR /root

# Copy the binary from the build stage
COPY --from=build /app/main .

# Ensure the binary is executable
RUN chmod +x main

CMD ["./main"]
