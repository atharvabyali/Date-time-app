# Use the Go base image
FROM golang:alpine

# Install curl
RUN apk add --no-cache curl

# Set the working directory
WORKDIR /app

# Copy the Go code into the container
COPY . .

# Build the Go application
RUN go build -o main .

# Expose the port
EXPOSE 8080

# Run the application
CMD ["./main"]
