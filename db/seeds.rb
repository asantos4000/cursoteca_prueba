require 'faker'
40.times.each do |row|
  Course.create(name: Faker::Commerce.product_name, description: Faker::Lorem.sentence(3), category: Faker::Commerce.department, price: Faker::Commerce.price, commission: Faker::Address.building_number, photo: Faker::Company.logo)
end 

