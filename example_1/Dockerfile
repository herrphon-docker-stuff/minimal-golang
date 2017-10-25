FROM golang:latest AS builder
ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64
COPY src /app 
WORKDIR /app 
CMD ["go",  "build -o main ."] 

FROM scratch
# ADD zoneinfo.tar.gz /
ADD https://raw.githubusercontent.com/bagder/ca-bundle/master/ca-bundle.crt /etc/ssl/certs/
COPY --from=builder /app/main /
CMD ["/main"]

