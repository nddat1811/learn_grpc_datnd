gen:
	protoc --go_out=. calc/*.proto
	protoc --go-grpc_out=. calc/*.proto
client:
	go run client/client.go
server:
	go run server/server.go
.PHONY: all server client clean 