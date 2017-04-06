class Todo < ApplicationRecord
	belongs_to :list, optional: true, inverse_of: :todos
	belongs_to :user, optional: true

	validates :task, presence: :true


end
