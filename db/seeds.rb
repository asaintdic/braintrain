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

Activity.create(name:'HIIT Training', duration:'45', category:'Fast Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Yoga', duration:'30', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Meditation', duration:'60', category:'Medium Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Restorative Sleep', duration:'45', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Reading', duration:'30', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Swimming', duration:'60', category:'High Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Community Service', duration:'45', category:'Medium Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Board Game', duration:'30', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Learn New Skill', duration:'60', category:'Varies', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Mindful Hiking', duration:'45', category:'High Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Prayer', duration:'30', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Drinking', duration:'60', category:'Fast Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Sewing', duration:'45', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'DIY Home Design', duration:'30', category:'Medium Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Coding', duration:'60', category:'High Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Walking', duration:'45', category:'Medium Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Dancing', duration:'30', category:'Medium Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Sculpting', duration:'60', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Cooking', duration:'45', category:'Low Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Learn New Skill', duration:'30', category:'Medium Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Sexual Intercourse', duration:'60', category:'High Active', brainwave_id: Brainwave.all.sample.id)
Activity.create(name:'Cleaning', duration:'45', category:'Low Active', brainwave_id: Brainwave.all.sample.id)

ActivityLog.create(duration:'60', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'45', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'30', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'60', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'45', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'30', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'60', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'45', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)
ActivityLog.create(duration:'30', user_id: User.all.sample.id, activity_id: Activity.all.sample.id)






