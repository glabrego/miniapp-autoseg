class List < ApplicationRecord
	belongs_to :user

  has_many :favourite_lists
  has_many :favourited_by, through: :favourite_lists, source: :user 

	has_many :todos, inverse_of: :list, dependent: :destroy

	accepts_nested_attributes_for :todos, allow_destroy: true, reject_if: proc { |att| att['task'].blank? } 

	validates :title, presence: true
	validates_associated :todos

  def favourited?(list, user)

    @favourited_lists = FavouriteList.all
    @favourited_lists.each do |favourite_list|
    	if list.id == favourite_list.list_id && user.id == favourite_list.user_id
    		return true
    	end
    end

    return false

  end

  def is_allowed?(list, user)
    if list.user_id == user.id
      true
    else
      false
    end
  end

  def self.public_lists
    where(public: true)
  end

  def self.my_lists(current_user)
    where(user_id: current_user.id) 
  end

end
