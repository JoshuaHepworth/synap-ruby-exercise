# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach('crm_exercise_data.csv') do |row|
  name = row[0]
  job_title = row[1]
  email_address = row[2]
  phone = row[3]
  organization = row[4]
  organization_phone = row[5]
  domain = row[6]
  street = row[7]
  city = row[8]
  state = row[9]
  zip = row[10] 
end
puts "done"