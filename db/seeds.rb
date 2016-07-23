require './models/user'
require './models/brand'
require './models/category'
require './models/product'
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

(1..5).each do |i|
  @brand = Brand.create(
  name: Faker::Company.name)
end

(1..10).each do |i|
  @category = Category.create(
  name: Faker::Commerce.department(1, true))
end

(1..20).each do |i|
  @product = Product.create(
  name: Faker::Commerce.product_name,
  brand_id: Random.new.rand(1..5),
  category_id: Random.new.rand(1..10),
  price: Faker::Commerce.price)

end
