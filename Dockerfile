FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build main.go -o /myapp

EXPOSE 8081

CMD [ "/myapp" ]