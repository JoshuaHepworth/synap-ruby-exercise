class Address < ApplicationRecord
	belongs_to :organization
	has_one :user
end
