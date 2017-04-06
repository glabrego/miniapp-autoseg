class Favourite < ApplicationRecord
  belongs_to :user_id
  belongs_to :list_id
end
