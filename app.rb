class RedmartSinatra < Sinatra::Base
  get '/' do
    erb 'Hello World!'
  end

  get '/users' do
    @users = User.all
    erb :'users'
  end

end
