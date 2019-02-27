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
#imports csv seed file
#loops through the rows
csv.each do |row|
  o = Organization.new
    o.organization_name = row['organization']
    o.organization_phone = row['organization_phone']
    # o.people_count = row['name']
    o.domain = row['domain']
    # address = Address.find_by(street: row['street'])
    # o.address_id = address.id
    o.save
    puts "#{o.organization_name} organization saved!"
    
  u = User.new
    u.name = row['name']
    u.job_title = row['job_title']
    u.email_address = row['email_address']
    u.phone = row['phone']
    organization = Organization.find_by(organization_name: row['organization'])
    # u.organization_id = organization.id
    u.save
    puts "#{u.name}, #{u.job_title} user saved!"


    a = Address.new
    a.street = row['street']

    if a.street != Address.where(street: a.street) 
        a.city = row['city']
        a.state = row['state']
        a.zip = row['zip']
        organization = Organization.find_by(organization_name: row['organization'])
        # a.organization_id = organization.id
        # puts "#{org}, THIS IS THE ORGANIZATION NAME"
        a.save
        puts "#{a.street} address saved!"  
    end

    
end
# end
  # end