# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

diagnosis = Category.create(name: 'diagnosis')
insurance = Category.create(name: 'insurance')
treatment = Category.create(name: 'treatment')

 Action.create([
     {name: 'ASD Diagnosis', description: 'get diagnosis from appropraite clinician', category: diagnosis},
     {name: 'Get insurance', description: 'make sure you have insurance', category: insurance},
     {name: 'Clinic takes insurance', description: 'confirm the clinic takes your insurance', category: insurance},
     {name: 'Sessions',description: 'schedule consistent sessions', category: treatment},
 ])