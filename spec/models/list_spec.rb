require 'rails_helper'
require 'support/validate_presence_of'

RSpec.describe List, type: :model do

 it 'validates presence of title' do
  	list = List.new(title: "")
  	list.should validate_presence_of(title)
  end

  describe ".public_list" do
  	let(:public_list) {List.create(public: true, title: "Second public list")}
  	let(:private_list) {List.create(public: false, title: "Second private list")}
  	let(:current_user) {User.create(id: 1, name: "Aram", email: "aramsm3@gmail.com")}

  	before do
  		public_list
  		private_list
  		current_user
  	end

  	it "returns only the public lists" do
  		expect(List.public_lists).to eq([public_list])
  	end

  	it "returns also private lists" do
  		expect(List.my_lists(current_user)).to eq([private_list])
  	end

  end
end
