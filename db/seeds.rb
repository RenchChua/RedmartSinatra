require './models/user'

(1..10).each do |i|
  User.create(name: "Name #{i}", email: "email #{i}", address: "address #{i}", password: "password #{i}", cc_number: "#{i}")
end
