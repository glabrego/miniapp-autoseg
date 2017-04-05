class Favourite < ApplicationRecord
	has_many :users
	has_many :lists
end
