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
  name: "Mini Big Forest",
  sub_category: "Forest",
  description: "Design of participatory urban forests with a high potential for biodiversity, greening, and social bonding.",
  catchline: "Replanting trees",
  website: "https://www.minibigforest.com/"
)
file = File.open(Rails.root.join('app/assets/images/forest.png'))
forest.photo.attach(io: file, filename: 'forest.png', content_type: 'image/png')
forest.save!

puts "Done"
puts 'Create nonprofit 2'

ocean = Nonprofit.new(
  name: "Ocean clean up",
  sub_category: "Ocean",
  description: "Development of advanced technologies to rid the ocean of plastic.",
  catchline: "Cleaning the ocean",
  website: "https://theoceancleanup.com/"
)
file = File.open(Rails.root.join('app/assets/images/ocean.png'))
ocean.photo.attach(io: file, filename: 'ocean.png', content_type: 'image/png')
ocean.save!

puts "Done"
puts 'Create nonprofit 3'

global_warming = Nonprofit.new(
  name: "Réseau Action Climat",
  sub_category: "Global Warming",
  description: "The Climate Action Network produces expertise and analyses on many issues: agriculture and food, waste, energy",
  catchline: "Organizing the future",
  website: "https://reseauactionclimat.org/"
)
file = File.open(Rails.root.join('app/assets/images/global-warming.png'))
global_warming.photo.attach(io: file, filename: 'global-warming.png', content_type: 'image/png')
global_warming.save!

puts "Done"
puts 'Create nonprofit 4'

sensibilization = Nonprofit.new(
  name: "Makesense",
  sub_category: "Sensibilization",
  description: "Makesense creates tools and programmes for collective mobilisation to enable everyone to take action and build an inclusive and sustainable society.",
  catchline: "Orchestrating the transition",
  website: "https://makesense.org/"
)
file = File.open(Rails.root.join('app/assets/images/sensibilization.png'))
sensibilization.photo.attach(io: file, filename: 'sensibilization.png', content_type: 'image/png')
sensibilization.save!

puts "Done"
puts 'Create nonprofit 5'

agriculture = Nonprofit.new(
  name: "Solidarité Paysans",
  sub_category: "Agriculture",
  description: "To accompany, defend families and preserve farmers' jobs",
  catchline: "Helping farmers",
  website: "https://solidaritepaysans.org/"
)
file = File.open(Rails.root.join('app/assets/images/agriculture.png'))
agriculture.photo.attach(io: file, filename: 'agriculture.png', content_type: 'image/png')
agriculture.save!

puts "Done"
puts 'Create nonprofit 6'

homeless = Nonprofit.new(
  name: "Les P'tits Gilets",
  sub_category: "Homeless",
  description: "Les Ptits Gilets is an association that helps the homeless in Nantes by distributing food, hygiene products and basic necessities",
  catchline: "Feeding the destitute",
  website: "https://associationlesptitsgilets.org/"
)
file = File.open(Rails.root.join('app/assets/images/homeless.png'))
homeless.photo.attach(io: file, filename: 'homeless.png', content_type: 'image/png')
homeless.save!

puts "Done"
puts 'Create nonprofit 7'

elderly_people = Nonprofit.new(
  name: "Fonds Eugénie",
  sub_category: "Elderly people",
  description: "The Eugenie Endowment Fund supports our elders to reduce the feeling of exclusion that old age and disability can cause.",
  catchline: "Listening seniors",
  website: "https://fonds-eugenie.org/"
)
file = File.open(Rails.root.join('app/assets/images/elderly-people.png'))
elderly_people.photo.attach(io: file, filename: 'elderly-people.png', content_type: 'image/png')
elderly_people.save!

puts "Done"
puts 'Create nonprofit 8'

disability = Nonprofit.new(
  name: "Handi'Chiens",
  sub_category: "Disability",
  description: "Handi'Chiens is an association that trains dogs for children with autistic disorders. The aim is to stimulate, awaken and soothe the children",
  catchline: "Supporting the disabled",
  website: "https://handichiens.org/?gclid=Cj0KCQjwsZKJBhC0ARIsAJ96n3W3Idko_6-hUNiP3qzCDnQaUspEniKDyjzwBNpe6lRrdpJLHOWeXGcaAhfEEALw_wcB"
)
file = File.open(Rails.root.join('app/assets/images/disability.png'))
disability.photo.attach(io: file, filename: 'disability.png', content_type: 'image/png')
disability.save!

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

animals_shelters = Nonprofit.new(
  name: "SPA",
  sub_category: "Animals Shelters",
  description: " The SPA acts daily to ensure the protection and defence of animals throughout the country.",
  catchline: "Protecting animals",
  website: "https://www.la-spa.fr/"
)
file = File.open(Rails.root.join('app/assets/images/animals-shelters.png'))
animals_shelters.photo.attach(io: file, filename: 'animals-shelters.png', content_type: 'image/png')
animals_shelters.save!

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

puts "All nonprofits generated"

# Created Nonprofits

# Create User
