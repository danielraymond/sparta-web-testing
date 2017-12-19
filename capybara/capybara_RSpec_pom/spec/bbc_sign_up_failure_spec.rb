require 'spec_helper'

describe 'Incorrect sign up details produces valid error' do

  after(:all) do
    Capybara.current_session.driver.quit
  end

  context 'it should respond with the correct error when incorrect sign up details are input' do

    it "should produce an error when inputting an already in use email" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.click_register_link
      @bbc_site.bbc_sign_up_page.fill_in_day('26')
      @bbc_site.bbc_sign_up_page.fill_in_month('04')
      @bbc_site.bbc_sign_up_page.fill_in_year('1996')
      @bbc_site.bbc_sign_up_page.click_sign_up_button
      @bbc_site.bbc_sign_up_page.fill_in_email('dan@email.com')
      @bbc_site.bbc_sign_up_page.fill_in_password('password123')
      @bbc_site.bbc_sign_up_page.fill_in_postcode('TW10 6TF')
      @bbc_site.bbc_sign_up_page.select_gender
      @bbc_site.bbc_sign_up_page.select_opt('optOut')
      @bbc_site.bbc_sign_up_page.click_register_button
      expect(@bbc_site.bbc_sign_up_page.find_email_error).to eq('Looks like you’ve already registered with this email. Want to sign in?')
      sleep 4
    end

    it "should produce an error when the password submmitted breaks the rules" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.click_register_link
      @bbc_site.bbc_sign_up_page.fill_in_day('26')
      @bbc_site.bbc_sign_up_page.fill_in_month('04')
      @bbc_site.bbc_sign_up_page.fill_in_year('1996')
      @bbc_site.bbc_sign_up_page.click_sign_up_button
      @bbc_site.bbc_sign_up_page.fill_in_email('dray@email.com')
      @bbc_site.bbc_sign_up_page.fill_in_password('password')
      @bbc_site.bbc_sign_up_page.fill_in_postcode('TW10 6TF')
      @bbc_site.bbc_sign_up_page.select_gender
      @bbc_site.bbc_sign_up_page.select_opt('optOut')
      @bbc_site.bbc_sign_up_page.click_register_button
      expect(@bbc_site.bbc_sign_up_page.find_password_error).to eq('Sorry, that password isn\'t valid. Please include something that isn\'t a letter.')
      sleep 4
    end

  end



end
