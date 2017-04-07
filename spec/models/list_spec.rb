require 'rails_helper'
require 'support/validate_presence_of'

RSpec.describe List, type: :model do

 it 'validates presence of title' do
  	list = List.new(:title => nil)
  	list.should validate_presence_of(:title)
  end

end
