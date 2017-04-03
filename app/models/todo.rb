class Todo < ApplicationRecord
	belongs_to :list, inverse_of: :todos
	belongs_to :user

	validates :task, presence: :true
end
