FROM golang:1.18-buster

COPY . /app

WORKDIR /app

EXPOSE 12345

RUN ls -la

CMD ["go", "run", "server.go"]