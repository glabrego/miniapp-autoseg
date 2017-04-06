require "spec_helper"
require "user"

describe User do
	it "is named Admin" do
		user = User.new
		user.name.should == 'Admin'
end
