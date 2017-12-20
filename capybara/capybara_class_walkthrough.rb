require 'capybara/dsl'

class BbcHomepage

  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK_ID = '#idcta-link'
  EMAIL_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SUBMIT_LINK_ID = '#submit-button'

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @driver = Capybara::Session.new(:chrome)
  end

  def visit_homepage
    @driver.visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    @driver.find(SIGN_IN_LINK_ID).click
  end

  def fill_in_email(email)
    @driver.fill_in(EMAIL_FIELD, with: email)
  end

  def fill_in_password(password)
    @driver.fill_in(PASSWORD_FIELD, with: password)
  end

  def click_submit_button
    @driver.find(SUBMIT_LINK_ID).click
  end

end

test1 = BbcHomepage.new
test1.visit_homepage
test1.click_sign_in_link
test1.fill_in_email('draymond@spartaglobal.com')
test1.fill_in_password('password123')
test1.click_submit_button

sleep 3
