# syntax=docker/dockerfile:1

#FROM -creates a layer from the golang:1.19-alpine Docker image
FROM golang:1.19-alpine

WORKDIR /app

#COPY -adds files from your Docker client’s current directory.
COPY go.mod ./
COPY go.sum ./
#RUN -builds your application with make
RUN go mod download

COPY *.go ./

RUN go build -o /docker-gs-ping

EXPOSE 8080

#CMD -specifies what command to run within the container
CMD [ "/docker-gs-ping" ]

#COPY and ADD are both Dockerfile instructions that serve a similar purpose. They let you copy files from a specific location into a Docker image.
#ADD  does that same but in addition, it also supports 2 other sources. 
    #A URL instead of a local file/directory.
    #Extract tar from the source directory into the destination.