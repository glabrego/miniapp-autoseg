require 'rails_helper'

RSpec.describe ListsController , type: :controller do

  describe "GET #index" do
  	let(:public_list) {List.create(public: true, title: "Second public list")}
  	let(:private_list) {List.create(public: false, title: "Second private list")}

  	before do
  		public_list
  		private_list
  	end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "returns only the public lists" do
    	get :index
    	expect(assigns(:public_lists)).to eq([public_list])
    end
  end

end
