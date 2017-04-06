class List < ApplicationRecord
	belongs_to :user

  	has_many :favourite_lists
  	has_many :favourited_by, through: :favourite_lists, source: :user 

	has_many :todos, inverse_of: :list, dependent: :destroy

	accepts_nested_attributes_for :todos, allow_destroy: true, reject_if: proc { |att| att['task'].blank? } 

	validates :title, presence: true
	validates_associated :todos
end
