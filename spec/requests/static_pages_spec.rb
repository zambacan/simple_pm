require 'spec_helper'
 
describe "StaticPages" do
 subject { page }
  describe "home page" do
  before { visit root_path }
   
    it { should have_selector('title', text: 'Home') }
  end

  describe "about page" do
   before { visit about_path }

     it { should have_selector('title', text: 'About') }
   end
end


