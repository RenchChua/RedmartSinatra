class RedmartSinatra < Sinatra::Base
  get '/' do
    erb 'Hello World!'
  end

  get '/about' do
    erb 'This is where we tell you about us'
  end



  get '/index' do
    @users = User.all
    erb :'./users/index'
  end

  #get form view to create new user
  get "/users/new" do
    @pizza = User.new
    erb :"./users/new"
  end

  # creating a pizza, where the new form POSTs to, it does the actual creation

  post "/users" do
    @user = User.new(params[:user])
    if @user.save
      redirect("/users/#{@user.id}")
    else
      erb(:"user/new")
    end
  end

  # get form view to edit an existing user
  get "/users/:id/edit" do
    erb "get form to edit one user with id #{params[:id]}"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'each_user'
  end

end
