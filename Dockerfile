# Dockerfile
FROM golang:1.20 as build

WORKDIR /app
COPY . .
RUN go build -o main .

# imagem final
FROM alpine:latest
WORKDIR /root/
COPY --from=build /app/main .

EXPOSE 8080
CMD ["./main"]
