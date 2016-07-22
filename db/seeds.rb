require './models/user'
require 'faker'

(1..10).each do |i|
  @user = User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: Faker::Internet.password(8),
  cc_number: Faker::Business.credit_card_number)

  @new_email = Faker::Internet.email("#{@user[:name]}")
  @user.update_attribute(:email, "#{@new_email}")
end
