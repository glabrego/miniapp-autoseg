require 'rails_helper'
require "support/list_steps"

RSpec.describe "Todo homepage", type: :feature do
	include ListSteps

	it "shows the public lists" do
		visit_homepage
		visitor_should_see_public_lists
	end

	it "does not shows private lists", type: :feature do
		visit_homepage
		visitor_should_not_see_private_lists
	end

	context "with a public list" do
		before do
			sign_in
			visit_list_form
			create_public_list("Public list", "Public task")
			sign_out
		end

		it "shows public lists, with public lists" do
			visit_homepage
			visitor_should_see_public_lists_with_public_list("Public title")
		end

		context "and with private list" do
			before do
				sign_in
				visit_list_form
				create_private_list("Private list", "private task")
				sign_out
			end

			it "does not shows private lists in the public lists" do
				visit_homepage
				visitor_should_not_see_public_lists_with_private_list("Private list")
			end
		end
	end
end