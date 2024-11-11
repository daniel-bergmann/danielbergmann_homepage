# Start from the official Golang image
FROM golang:1.20-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Initialize a new Go module inside the container
RUN go mod init example.com/go-simple-server

# Copy the remaining files into the container
COPY . .

# Download dependencies (if any are added in main.go)
RUN go mod tidy

# Expose port 8003 to the outside world
EXPOSE 8003

# Command to start the Go server
CMD ["go", "run", "main.go"]
