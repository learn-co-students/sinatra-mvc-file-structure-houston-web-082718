class ApplicationController < Sinatra::Base

  #tells controller where to look to find views and the public directory
  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  #controller action that receives and responds to a GET request to the
  #root URL '/'. this
  get "/" do
  	erb :index #loads the index.erb file
  end
end
