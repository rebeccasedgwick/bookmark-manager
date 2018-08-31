require "sinatra/base"
require "./lib/bookmark"
require "sinatra/flash"
require "uri"

class App < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get "/" do
    erb :index
  end

  get "/add" do
    erb :add
  end

  post "/add_bookmark" do
    flash[:invalid] = "Error: please enter a valid URL" unless Bookmark.create(url: params[:url])
    redirect "/bookmarks"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
