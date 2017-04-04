class List < ApplicationRecord
	belongs_to :user
	has_many :todos, inverse_of: :list, dependent: :destroy
	accepts_nested_attributes_for :todos, allow_destroy: true

	validates :title, presence: true
	validates_associated :todos
end
