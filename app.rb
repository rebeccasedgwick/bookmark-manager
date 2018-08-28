require "sinatra/base"
require "./lib/bookmark"
class App < Sinatra::Base

  get "/" do
    "Hello, World!"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :index
  end

  run! if app_file == $0
end