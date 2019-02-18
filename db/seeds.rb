# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
csv_text = File.read(Rails.root.join('db', 'crm_exercise_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
#   u = User.new
#     u.name = row['name']
#     u.job_title = row['job_title']
#     u.email_address = row['email_address']
#     u.phone = row['phone']
#     u.save
#     puts "#{u.name}, #{u.job_title} saved!"
# end
  o = Organization.new
    o.organization_name = row['organization']
    o.organization_phone = row['organization_phone']
    o.domain = row['domain']
    o.street = row['street']
    o.city = row['city']
    o.state = row['state']
    o.zip = row['zip']
    o.save
    puts "#{o.organization_name}, #{o.city} saved!"
end