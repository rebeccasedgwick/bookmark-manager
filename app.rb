require "sinatra/base"
require "./lib/bookmark"
class App < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/add_bookmark" do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
