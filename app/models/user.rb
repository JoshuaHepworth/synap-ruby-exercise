class User < ApplicationRecord
	belongs_to :organization
	has_one :address
  
  def people_count
    people_count = User.where(organization_id: id)
    people_count.length
  end
end
