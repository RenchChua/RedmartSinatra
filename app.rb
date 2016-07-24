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

# view all products
  get '/products' do
    @categories = Category.all
    @products = Product.all
    erb :'./products/index'
  end

  # render form to add product

  get "/products/new" do
    @product = Product.new
    erb :"./products/new"
  end

  # action to add products

  post "/products" do
    @product = Product.new(params[:product])
    if @product.save
      redirect("/products")
    else
      erb :"./products/new"
    end
  end

  # render form to edit product

  get "/products/:id/edit" do
    @edit_product = Product.find(params[:id])
    erb :"./products/edit"
  end

  # action to edit product
  put "/products/:id" do
    @edit_product = Product.find(params[:id])
    @edit_product.update_attributes(params[:product])
    redirect "/products/#{params[:id]}"
  end

  # render view for each product
  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :'./products/show'
  end

  # action to delete product
  delete '/products/:id' do
    @delete_product = Product.find(params[:id])
    if @delete_product.destroy
      redirect("/products")
    else
      erb :"./products/show"
    end
  end

  # controllers for categories

  # view all products
    get '/categories' do
      @category = Category.all
      erb :'./categories/index'
    end

    # render form to add product

    get "/categories/new" do
      @category = Category.new
      erb :"./categories/new"
    end

    # action to add products

    post "/categories" do
      @category = Category.new(params[:product])
      if @category.save
        redirect("/cateogries")
      else
        erb :"./categories/new"
      end
    end

    # render form to edit product

    get "/categories/:id/edit" do
      @edit_category = Category.find(params[:id])
      erb :"./categories/edit"
    end

    # action to edit product
    put "/categories/:id" do
      @edit_category = Category.find(params[:id])
      @edit_category.update_attributes(params[:category])
      redirect "/categories/#{params[:id]}"
    end

    # render view for each product
    get '/categories/:id' do
      @category = Category.find(params[:id])
      erb :'./categories/show'
    end

    # action to delete product
    delete '/categories/:id' do
      @delete_category = Category.find(params[:id])
      if @delete_category.destroy
        redirect("/categories")
      else
        erb :"./categories/show"
      end
    end


end
