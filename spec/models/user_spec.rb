require 'rails_helper'

RSpec.describe User, type: :model do
   it 'validates presence of email' do
  	user = User.new(email: nil)
  	user.should validate_presence_of(:email)
  end
end
