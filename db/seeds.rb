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

orphans = Nonprofit.new(
  name: "Miracle foundation",
  sub_category: "Orphans",
  description: "Miracle Foundation is part of a global network of non-profit organizations leading the worldwide movement to end the need for orphanages in our lifetime.",
  catchline: "Protecting the orphans",
  website: "https://www.miraclefoundation.org/"
)
file = File.open(Rails.root.join('app/assets/images/orphans.png'))
orphans.photo.attach(io: file, filename: 'orphans.png', content_type: 'image/png')
orphans.save!

puts "Done"
puts 'Create nonprofit 10'

refugees = Nonprofit.new(
  name: "Refugees international",
  sub_category: "Refugees",
  description: "",
  catchline: "Rescuing the refugees",
  website: "https://www.refugeesinternational.org/"
)
file = File.open(Rails.root.join('app/assets/images/refugees.png'))
refugees.photo.attach(io: file, filename: 'refugees.png', content_type: 'image/png')
refugees.save!

puts "Done"
puts 'Create nonprofit 11'

birds = Nonprofit.new(
  name: "LPO",
  sub_category: "Birds",
  description: "This nonprofit works on a daily basis for the protection of species, the preservation of spaces and for environmental education and awareness.",
  catchline: "Preserving birds",
  website: "https://www.lpo.fr/"
)
file = File.open(Rails.root.join('app/assets/images/birds.png'))
birds.photo.attach(io: file, filename: 'birds.png', content_type: 'image/png')
birds.save!

puts "Done"
puts 'Create nonprofit 12'

bees = Nonprofit.new(
  name: "Confidences d'abeilles",
  sub_category: "Bees",
  description: "Protect bees through beehive sponsorship get involved with us by sponsoring bees and receive authentic honey.",
  catchline: "Safeguarding bees",
  website: "https://association.confidencesdabeilles.fr/"
)
file = File.open(Rails.root.join('app/assets/images/bees.png'))
bees.photo.attach(io: file, filename: 'bees.png', content_type: 'image/png')
bees.save!

puts "Done"
puts 'Create nonprofit 13'

aniamals_shelters = Nonprofit.new(
  name: "SPA",
  sub_category: "Animal Shelters",
  description: " The SPA acts daily to ensure the protection and defence of animals throughout the country.",
  catchline: "Protecting animals",
  website: "https://www.la-spa.fr/"
)
file = File.open(Rails.root.join('app/assets/images/aniamals-shelters.png'))
aniamals_shelters.photo.attach(io: file, filename: 'aniamals-shelters.png', content_type: 'image/png')
aniamals_shelters.save!

puts "Done"
puts 'Create nonprofit 14'

biodiversity = Nonprofit.new(
  name: "Kalaweit",
  sub_category: "Biodiversity",
  description: "The association works for biodiversity in general but remains the largest gibbon conservation project in the world today.",
  catchline: "Taking care of our planet",
  website: "https://kalaweit.org/"
)
file = File.open(Rails.root.join('app/assets/images/biodiversity.png'))
biodiversity.photo.attach(io: file, filename: 'biodiversity.png', content_type: 'image/png')
biodiversity.save!

puts "Done"
puts 'Create nonprofit 15'

endangered_species = Nonprofit.new(
  name: "WWF",
  sub_category: "Endangered Species",
  description: "WWF works to preserve endangered regions and species. Let's work together to stop the degradation of nature.",
  catchline: "Saving mass extinction",
  website: "https://www.worldwildlife.org/"
)
file = File.open(Rails.root.join('app/assets/images/endangered-species.png'))
endangered_species.photo.attach(io: file, filename: 'endangered-species.png', content_type: 'image/png')
endangered_species.save!

# Created Nonprofits
