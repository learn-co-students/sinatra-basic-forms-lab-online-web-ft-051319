require_relative 'config/environment'


class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do

    new_params = {name: params["name"], breed: params["breed"], months_old: params["age"]}
    #need to convert the params hash into a format that we can initialize with
    #the initial params looks like this {"name"=>"balbala", "breed"=>"abbajsdkan", "age"=>"14"} where the keys
    #are strings as opposed to symbols, so keyword arguments wouldnt work
    @puppy = Puppy.new(new_params)

    erb :display_puppy
  end


end
