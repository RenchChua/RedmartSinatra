require 'rubygems'
require 'bundler'
Bundler.require

# THIS IS THE MODEL
require './models/user'
require './models/product'
require './models/category'
require './models/brand'

# THIS IS THE CONTROLLER
require './app'

# CLASS REFERS TO THE CLASS NAME IN app.rb
use Rack::MethodOverride
run RedmartSinatra
