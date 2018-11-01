require "socket"

port = 8000
server = TCPServer.open(port)

loop do
  Thread.start(server.accept) do |buffer|
    while buffer.gets
      buffer.write($_)
    end
    buffer.close
  end
end
# echo
