FROM golang:latest

RUN go version
ENV GOPATH=/

COPY ./ ./

# build go app
RUN go mod download
RUN go build -o parcel-service-app ./

CMD ["./parcel-service-app"]