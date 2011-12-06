# This file contains tests for pages in the Users controller.
# These tests are written for RSpec instead of the default Test::Unit framework.

require 'spec_helper'

describe UsersController do
	render_views

	describe "GET 'new'" do
	    it "should be successful" do
			get 'new'
			response.should be_success
    	end

    	it "should have the right title" do
    		get 'new'
    		# The 'have_selector()' method needs the 'render_views' above
    		# because it tests the view along with the action.
    		response.should have_selector("title", :content => "Sign up")
    	end
  	end

end
