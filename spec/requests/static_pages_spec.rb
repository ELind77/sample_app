require 'spec_helper'

describe "StaticPages" do
    # home Page
    describe"Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample App')
        end
        
        # Title test
        it "should have the title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
        end
    end
    
    # Help Page
    describe "Help page" do
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end
        
        # Title
        it "should have the title 'Help'" do
          visit '/static_pages/help'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
        end
    end
    
    # About Page
    describe "About page" do
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end
        # Title Test
        it "should have the title 'About Us'" do
          visit '/static_pages/about'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
        end
    end
    
    # Contact Page
    describe "Contact page" do
        it "should have the content 'Contact'" do
          visit '/static_pages/contact'
          expect(page).to have_content('Contact')
        end
    
        # Title page     
        it "should have title 'Contact'" do
            visit '/static_pages/contact'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
        end
    end  
    
end
  
