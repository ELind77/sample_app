require 'spec_helper'

describe "StaticPages" do
    
    subject { page }
    
    # home Page
    describe"Home page" do
        before { visit root_path }
        
        it { should have_content('Sample App') }
        it { should have_title(full_title('')) }
        it { should_not have_title(' | Home') }
        
        # it "should have the content 'Sample App'" do
        #     #visit '/static_pages/home'
        #     visit root_path
        #     expect(page).to have_content('Sample App')
        # end
        
        # # Title test
        # it "should have the base title" do
        #     visit root_path
        #     expect(page).to have_title("Ruby on Rails Tutorial Sample App")
        # end
        
        # # Custom Title Test
        # it "should not have a custom page title" do
        #     visit root_path
        #     expect(page).not_to have_title('| Home')
        # end
        
    end
    
    # Help Page
    describe "Help page" do
        before { visit help_path }
        
        it { should have_content("Help") }
        it { should have_title(full_title('Help')) }
    end
    
    # About Page
    describe "About page" do
        before { visit about_path }
        
        it { should have_content('About Us') }
        it { should have_title(full_title('About Us')) }
    end
    
    # Contact Page
    describe "Contact page" do
        before { visit contact_path }
        
        it { should have_content('Contact') }
        it { should have_title(full_title('Contact')) }
    end  
     
end
  
