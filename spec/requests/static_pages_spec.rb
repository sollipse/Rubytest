require 'spec_helper'
describe "Static Pages" do
  describe "Home Page" do
    it "should go to home page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial | Home")
    end
  end
  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
    it "should have the right title for help" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial | Help")
    end
  end
  describe "About Page" do
  	it "should ahve the content'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
    it "should have the title set to 'Ruby on Rails Tutorial | About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial | About")
    end
  end
end
