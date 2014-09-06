require 'spec_helper'

describe "Static pages" do    # describing the Home page, RSpec doesn't care what it is
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'    # uses Capybara function to simulate visiting URL in a browser

      ##
      # uses page variable (provided by Capybara) to express the expectation that the resulting page
      # from the visit should have the right content
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe 'Help page' do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe 'About page' do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end