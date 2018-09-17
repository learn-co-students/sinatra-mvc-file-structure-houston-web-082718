class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
    erb :index
  end

  get '/dog' do
    @dog = Dog.new("rudolph", "mastiff", 2)
    @dog = Dog.new("sam", "lab", 3)
    erb :'dog.html'
  end

end
