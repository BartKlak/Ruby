require "cgi"
cgi = CGI.new

a=1

cgi.out("type" => "text/html", "charset" => "UTF-8") do
  id=0
  html = "<html><body>\n"
  f="index.txt"
  if File.exist?(f)
  	f = File.open("index.txt", "r")
	f.each_line do |line|
		id+=1
	html = html + "<p>id: #{id}</p>"
	end
	f.close
  else
  	html = html + "<p>no id available</p>"
  end
  html = html + "</body></html>"
  html
end
