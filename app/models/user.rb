class User < ApplicationRecord
	belongs_to :organization
	has_one :address
end
