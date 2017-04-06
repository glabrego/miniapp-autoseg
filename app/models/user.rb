class User < ApplicationRecord
	
  has_many :lists, dependent: :destroy
  has_many :todos, dependent: :destroy
  has_many :favourite_lists
  has_many :favourites, through: :favourite_lists, source: :list
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable, :confirmable
end
