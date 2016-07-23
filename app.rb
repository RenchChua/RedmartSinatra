class RedmartSinatra < Sinatra::Base
  get '/' do
    erb 'Hello World!'
  end

  get '/about' do
    erb 'This is where we tell you about us'
  end


# controller for users

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

  put "/users/:id" do
    @edit_user = User.find(params[:id])
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
      erb :"./users/show"
    end
  end

# controllers for products
  get '/products' do
    @products = Product.all
    erb :'./products/index'
  end

  get "/products/new" do
    @product = Product.new
    erb :"./products/new"
  end

  post "/products" do
    @product = Product.new(params[:product])
    if @product.save
      redirect("/products")
    else
      erb :"./products/new"
    end
  end

  get "/products/:id/edit" do
    @edit_product = Product.find(params[:id])
    erb :"./products/edit"
  end

  put "/products/:id" do
    @edit_product = Product.find(params[:id])
    @edit_product.update_attributes(params[:product])
    redirect "/products/#{params[:id]}"
  end

  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :'./products/show'
  end

  delete '/products/:id' do
    @delete_product = Product.find(params[:id])
    if @delete_product.destroy
      redirect("/products")
    else
      erb :"./products/show"
    end
  end

end
