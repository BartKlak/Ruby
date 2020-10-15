require "cgi"
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") do
  mssg  = cgi["msg"]
  id=1
  html = "<html><body>\n"
  if mssg == "door"
	html = html + "This is the forbidden word!</p>"
  else
  	f="index.txt"
  	if File.exist?(f)
  		f = File.open("index.txt", "r")
		f.each_line do |line|
			id+=1
		end
		f = File.open("index.txt", "a")
		f.puts("#{id}: #{mssg}\n")
  		f.close
  		html = html + "<p>your message: #{mssg}</p>"
  	else
  		f = File.open("index.txt", "w")
		f.puts("#{id}: #{mssg}\n")
  		f.close
  		html = html + "<p>your message: #{mssg}</p>"
  	end	
  end
  html = html + "</body></html>"
  html
end
