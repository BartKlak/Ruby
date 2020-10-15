require 'socket'

server = TCPServer.new 2000
a = 1

client = server.accept

while a == 1
	puts client.gets
end

client.close




