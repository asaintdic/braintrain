# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Brainwave.create(name:'Alpha Wave', frequency:'8-12 Hz', description:'Meditative/ Mindfulness')
Brainwave.create(name:'Beta Wave', frequency:'12-38 Hz', description:'Fast Activity')
Brainwave.create(name:'Delta Wave', frequency:'.5-3 Hz', description:'Suspends External Awareness')
Brainwave.create(name:'Gamma Wave', frequency:'38-42 Hz', description:'Fastes Brainwave/Highest Frequency')
Brainwave.create(name:'Infra-Low', frequency:'<.5 Hz', description:'Unknown')
Brainwave.create(name:'Theta Wave', frequency:'3-8 Hz', description:'Present During Sleep')

Activity.create(name:'HIIT Training', duration:'45', category:'Fast Active')
Activity.create(name:'Yoga', duration:'50', category:'Low Active')
Activity.create(name:'Meditation', duration:'20', category:'Medium Dormant')
Activity.create(name:'Restorative Sleep', duration:'6-8', category:'High Dormant')
Activity.create(name:'Reading', duration:'20', category:'Medium Dormant')
Activity.create(name:'Swimming', duration:'30', category:'Medium Active')
Activity.create(name:'Community Service', duration:'120', category:'Altruistic')
Activity.create(name:'Board Game', duration:'180', category:'Low Active')
Activity.create(name:'Learn New Skill', duration:'0', category:'Varies')
Activity.create(name:'Mindful Hiking', duration:'240', category:'High Active')
Activity.create(name:'Prayer', duration:'120', category:'Low Dormant')





