class RedmartSinatra < Sinatra::Base
  get '/' do
    erb 'Hello World!'
  end

  get '/about' do
    erb 'This is where we tell you about us'
  end

  get '/users' do
    @users = User.all
    erb :'users'
  end

end
