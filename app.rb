class RedmartSinatra < Sinatra::Base
  get '/' do
    erb 'Hello World!'
  end

  get '/about' do
    erb 'This is where we tell you about us'
  end



  get '/users' do
    @users = User.all
    erb :'./users/index'
  end

  #get form view to create new user
  get "/register" do
    @user = User.new
    erb :"./users/new"
  end

  # creating a user, where the new form POSTs to, it does the actual creation

  post "/users" do
    @user = User.new(params[:user])
    if @user.save
      redirect("/users")
    else
      erb :"./users/new"
    end
  end

  # get form view to edit an existing user
  get "/users/:id/edit" do
    @edit_user = User.find(params[:id])
    erb :"./users/edit"
  end
  # what are the attributes in ure user database
  put "/users/:id" do
    @edit_user = User.find(params[:id])
    puts @edit_user
    puts params[:user]
    @edit_user.update_attributes(params[:user])
    redirect "/users/#{params[:id]}"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'./users/show'
  end

  delete '/users/:id' do
    @delete_user = User.find(params[:id])
    if @delete_user.destroy
      redirect("/users")
    else
      erb :"users/#{@deleted_user.id}"
    end
  end

end
