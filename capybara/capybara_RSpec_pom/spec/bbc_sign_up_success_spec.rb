require 'spec_helper'

describe 'Correct user details sign up successfully' do

  after(:all) do
    Capybara.current_session.driver.quit
  end

  it "should sign up successfully when the entered user details are correct" do
    @bbc_site = BbcSite.new
    @bbc_site.bbc_homepage.visit_home_page
    @bbc_site.bbc_homepage.click_sign_in_link
    @bbc_site.bbc_sign_in_page.click_register_link
    @bbc_site.bbc_sign_up_page.fill_in_day('26')
    @bbc_site.bbc_sign_up_page.fill_in_month('04')
    @bbc_site.bbc_sign_up_page.fill_in_year('1996')
    @bbc_site.bbc_sign_up_page.click_sign_up_button
    @bbc_site.bbc_sign_up_page.fill_in_email("dan#{rand(1000)}@email.com")
    @bbc_site.bbc_sign_up_page.fill_in_password('password123')
    @bbc_site.bbc_sign_up_page.fill_in_postcode('TW10 6TF')
    @bbc_site.bbc_sign_up_page.select_gender
    @bbc_site.bbc_sign_up_page.select_opt('optOut')
    @bbc_site.bbc_sign_up_page.click_register_button
  end

end
