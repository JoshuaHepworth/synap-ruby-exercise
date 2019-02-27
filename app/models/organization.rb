class Organization < ApplicationRecord
	has_one :address
	has_many :users

	def people_count
    people_count = User.where(organization_id: id)
    people_count.length
  end
end
