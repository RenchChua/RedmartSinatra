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

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'each_user'
  end

end
