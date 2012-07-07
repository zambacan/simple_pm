require 'spec_helper'

describe "StaticPages" do
  describe "home page"
  it "should have content 'SimplePM'" do
    visit "/static_pages/home"
    page.should have_content("SimplePM")
  end

end
