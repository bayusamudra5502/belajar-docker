# FROM untuk menandakan image apa
# yang mau dipake dari registry
FROM golang:1.11.4

# Copy dari local main.go ke
# container dengan path /app/main.go
COPY main.go /app/main.go

# Jalankan perintah go run /app/main.go
CMD ["go","run","/app/main.go"]

# Build gunakan : 
# docker build --tag <nama>:<tag> <path_dir>