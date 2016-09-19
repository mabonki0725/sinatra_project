require 'sinatra'

get '/' do 
<<EOS
<html>
 <head>
  <title>AIIT Hello</title>
 </head>
 <body>
  <H1>Hellow world, Nakai</H1>
  こんにちは、これはHerokuで動作するWebアプリです
 </body>
</html>
EOS
end
get '/hello/:name' do
  # "GET /hello/foo" と "GET /hello/bar" にマッチ
  # params['name'] は 'foo' か 'bar'
  "Hello #{params['name']}!"
end
