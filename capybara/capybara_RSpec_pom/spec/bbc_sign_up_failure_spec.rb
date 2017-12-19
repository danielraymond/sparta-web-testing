require 'spec_helper'

describe 'Incorrect sign up details produces valid error' do

  context 'it should respond with the correct error when incorrect sign up details are input' do

    it "should produce an error when inputting an already in use username" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.click_register_link

    end

  end



end
