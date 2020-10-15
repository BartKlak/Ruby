require 'socket'

socket = TCPSocket.new('127.0.0.1', 2000)
a = 1

while a==1 
chat = gets().chomp
if chat == "bye"
	socket.puts chat
	break
	socket.close
else
	socket.puts chat
end
end


