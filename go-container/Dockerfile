FROM golang:1.19.3-alpine

RUN go install github.com/cosmtrek/air@latest
RUN adduser docker -D

CMD ["air"]