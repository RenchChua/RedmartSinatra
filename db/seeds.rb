require './models/user'
require 'Faker'

(1..10).each do |i|
  @user = User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: Faker::Internet.password(8),
  cc_number: Faker::Business.credit_card_number)

  # @user.update_attributes(:email, Faker::Internet.email("#{@user[:name]}"))
end
