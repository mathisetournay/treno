# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialisation seeds

puts "Clear DB"
User.destroy_all
Nonprofit.destroy_all
DonationSession.destroy_all
Donation.destroy_all

# Creation Nonprofits

puts 'Create nonprofit 1'

forest = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/forest.png'))
forest.photo.attach(io: file, filename: 'forest.png', content_type: 'image/png')
forest.save!

puts "Done"
puts 'Create nonprofit 2'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 3'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 4'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 5'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 6'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 7'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 8'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 9'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 10'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 11'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 12'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 13'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 14'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 15'

ocean = Nonprofit.new(
  name: "",
  sub_category: "",
  description: "",
  catchline: "",
  website: ""
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

# Created Nonprofits
