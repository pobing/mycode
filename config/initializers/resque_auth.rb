# http://asciicasts.com/episodes/271-resque
Resque::Server.use(Rack::Auth::Basic) do |user, password|
  password == "mycode"
end