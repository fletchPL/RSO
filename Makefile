all: server.o client.o

server.o: Server.cpp
	g++ -I. Printer.cpp Server.cpp -lIce -lIceUtil -pthread -o server

client.o: Client.cpp
	g++ -I. Printer.cpp Client.cpp -lIce -lIceUtil -pthread -o client
