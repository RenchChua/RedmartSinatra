require 'rubygems'
require 'bundler'
Bundler.require

# THIS IS THE MODEL
require './models/user'

# THIS IS THE CONTROLLER
require './app'

# CLASS REFERS TO THE CLASS NAME IN app.rb
run RedmartSinatra
