require 'rails_helper'

RSpec.describe Todo, type: :model do
  
  
  it 'validates presence of a list' do
  	list = List.new()
  	list.todos.new
  	todo = list.todos.last
  	todo.should validate_presence_of(:list_id)
  end



end
