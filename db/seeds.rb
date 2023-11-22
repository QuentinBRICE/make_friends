require 'faker'

puts "Cleaning database..."
Advertisement.destroy_all

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
