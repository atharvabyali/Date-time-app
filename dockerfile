# Use an official Golang runtime as the base image
FROM golang:1.19-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the go.mod and go.sum files
COPY go.mod go.sum ./

# Download Go dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
RUN go build -o datetime-app .

# Expose port 8080 for the app to run
EXPOSE 8080

# Run the Go app
CMD ["./datetime-app"]
 
