require 'spec_helper'

describe "Pages" do
	subject {page}
	describe "Home" do
		before { visit root_path }
		it {should have_content('Help With Friends')}
	    it {should have_title("Help With Friends")}
	    it {should_not have_title('Home - ')} 
	  end


	describe "Help Page" do
		before {visit help_path}
		it {should have_content('Help')}
		it {should have_title('Help - Help With Friends')}
	 end

	describe "About Page" do
		before {visit about_path}
		it {should have_content('About')}
		it {should have_title('About - Help With Friends')}
	end

	describe "Contact Page" do
		before {visit contact_path}
		it {should have_content('Contact')}
		it {should have_title('Contact - Help With Friends')}
	end
end