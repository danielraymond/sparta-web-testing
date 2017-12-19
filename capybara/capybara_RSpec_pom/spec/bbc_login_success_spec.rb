require 'spec_helper'

describe 'Correct user details log in successfully' do

  it "should log in successfully when the entered user details are correct" do
    skip
    @bbc_site = BbcSite.new
    @bbc_site.bbc_homepage.visit_home_page
    @bbc_site.bbc_homepage.click_sign_in_link
    @bbc_site.bbc_sign_in_page.fill_in_username('dan@email.com')
    @bbc_site.bbc_sign_in_page.fill_in_password('password123')
    @bbc_site.bbc_sign_in_page.click_sign_in_button
  end

end
