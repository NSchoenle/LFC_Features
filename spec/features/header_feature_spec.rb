require 'rails_helper'

RSpec.feature "Header Features", :type => :feature do
  before (:each) do
    visit root_path
  end
  
  context "header elements are present" do
    scenario "should contain the logo" do
      expect(page).to have_css("img[src*='logo.png']")
    end
    
    scenario "should contain the home tab" do
      expect(page).to have_content("Home")
    end
    
    scenario "should contain the map tab" do
      expect(page).to have_content("Map")
    end
    
    scenario "should contain the signup tab" do
      expect(page).to have_content("Sign up")
    end
    
    scenario "should contain the signin tab" do
      expect(page).to have_content("Sign In")
    end
  end
  
  context "header responds as expected" do
    scenario "clicking the LFC logo should redirect to the LFC website" do
      #click on the logo
      #assert that it redirects to the proper place
    end
    
    scenario "clicking the home tab should redirect to root_path" do
      click_link("Home")
      expect(page.current_path).to eq(root_path)
    end
    
    scenario "clicking the map tab should redirect to the map page" do
      click_link("Map")
      expect(page.current_path).to eq(map_path)
    end
    
    scenario "clicking the signup tab should redirect to signup page" do
      click_link("Sign up")
      expect(page.current_path).to eq(new_farm_path)
    end
    
    scenario "clicking the the signin tab redirects to signin page" do
      click_link("Sign In")
      expect(page.current_path).to eq('/signin')
    end
  end
end
