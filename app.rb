require_relative 'config/environment'

class App < Sinatra::Base
  
  get('/'){ erb :index}
  
  get ('/new') {erb :create_puppy}
  
  post '/puppy' do
    @name = params[:name]
    @age = params[:age]
    @breed = params[:breed]
    
    erb :display_puppy
  end
  
  

end
