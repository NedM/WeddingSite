require 'spec_helper'

describe "StaticPages" do

let(:base_title) { "Puyao and Ned's Website" }

  describe "Home page" do
    it "should have the content 'Puyao and Ned are getting married!'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Puyao and Ned are getting married!')
    end

    it "should have the correct title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "#{base_title}")
    end

  end

  describe "Help page" do
  	it "should have the content 'Puyao and Ned's friendly help and support page'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => "Puyao and Ned's friendly help and support page")
  	end

    it "should have the correct title" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end	

    describe "Contact Page" do

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end

    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact Puyao and/or Ned")
    end
  end
end
