require "cgi"
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") do
  number = cgi["num"].to_i
  html = "<html><body><table>\n"
  number.times do |n|
if (n+1)%3==0 && (n+1)%5==0
    html = html + "<tr><th>#{n+1}</th><th>FizzBuzz</th></tr>"
elsif (n+1)%3==0
    html = html + "<tr><th>#{n+1}</th><th>Fizz</th></tr>"
elsif (n+1)%5==0
    html = html + "<tr><th>#{n+1}</th><th>Buzz</th></tr>"
else
    html = html + "<tr><th>#{n+1}</th><th>#{n+1}</th></tr>"
  end
end
  html = html + "</table></body></html>"
  html
end
