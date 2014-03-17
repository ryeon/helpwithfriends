require 'spec_helper'

describe "Pages" do
	describe "Home" do
		it "should have the content" 'Help With Friends' do
			visit '/pages/home'
			expect(page).to have_content('Help With Friends')
		end

	    it "should have the base title" do
	      visit '/pages/home'
	      expect(page).to have_title("Help With Friends")
	    end

	    it "should not have a custom page title" do
	      visit '/pages/home'
	      expect(page).not_to have_title('Home - ')
	    end
	  end


	describe "Help Page" do
		it "should have the content" 'Help' do
			visit '/pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the title" "Help" do
			visit '/pages/help'
			expect(page).to have_title("Help - Help With Friends")
		end
	 end

	describe "About Page" do
		it "should have the content" 'About' do
			visit '/pages/about'
			expect(page).to have_content('About')
		end

		it "should have the title" 'About' do
			visit '/pages/about'
			expect(page).to have_title("About - Help With Friends")
	    end
	end
end