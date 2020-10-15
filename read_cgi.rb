require "cgi"
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") do
  index = cgi["id"].to_i
  id=1
  html = "<html><body>\n"
  f="index.txt"
  if File.exist?(f)
  	f = File.open("index.txt", "r")
	f.each_line do |line|
		if index == id
			a = line.split(':')[1]
			html = html + "<p>your message was: #{a}</p>"
		end	
		id+=1
	end
  end
  
  html = html + "</body></html>"
  html
end
