class List < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :favourite, optional: true
	has_many :todos, inverse_of: :list, dependent: :destroy
	accepts_nested_attributes_for :todos, allow_destroy: true, reject_if: proc { |att| att['task'].blank? } 

	validates :title, presence: true
	validates_associated :todos
end
