class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end

  get '/dogs/:id' do
    @dog = Dog.new("rudolph", "mastiff", 2)
  end
end
