require 'faker'

puts "Cleaning database..."
Advertisement.destroy_all
User.destroy_all

puts "Creating users..."
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(from: 18, to: 90),
    email: Faker::Internet.email,
    gender: Faker::Gender.binary_type,
    password: Faker::Internet.password,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  user.save!
end

puts 'Creating advertisements...'
10.times do
  advertisement = Advertisement.new(
    title: Faker::Hobby.activity,
    description: Faker::Lorem.paragraph,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
  )
  advertisement.user = User.all.sample
  advertisement.save!
end
puts 'Finished!'
