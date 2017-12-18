require 'selenium-webdriver'

class SeleniumQatoolsForm

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  SEX_FIELD_ID = 'sex-1'
  YEARS_OF_EXPERIENCE_FIELD_ID = 'exp-3'
  DATE_FIELD_ID = 'datepicker'
  PROFESSION_FIELD_ID = 'profession-1'
  AUTOMATION_TOOL_FIELD_ID = 'tool-2'
  CONTINENT_FIELD_ID = 'continents'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def fill_first_name(fname)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(fname)
  end

  def fill_last_name(lname)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(lname)
  end

  def enter_sex
    @chrome_driver.find_element(:id, SEX_FIELD_ID).click
  end

  def enter_years_of_experience
    @chrome_driver.find_element(:id, YEARS_OF_EXPERIENCE_FIELD_ID).click
  end

  def enter_date(date)
    @chrome_driver.find_element(:id, DATE_FIELD_ID).send_keys(date)
  end

  def enter_profession
    @chrome_driver.find_element(:id, PROFESSION_FIELD_ID).click
  end

  def enter_automation_tool
    @chrome_driver.find_element(:id, AUTOMATION_TOOL_FIELD_ID).click
  end

  def enter_continent
    continent_options = @chrome_driver.find_element(:id, CONTINENT_FIELD_ID).click
    options = @chrome_driver.find_elements(:tag_name, 'option')
    options.each {|option| if option.text == "Australia"; option.click end}
    sleep 4
  end

end

practice_form_page = SeleniumQatoolsForm.new
practice_form_page.visit_practice_form
practice_form_page.fill_first_name('Daniel')
practice_form_page.fill_last_name('Raymond')
practice_form_page.enter_sex
practice_form_page.enter_years_of_experience
practice_form_page.enter_date('16/12/2017')
practice_form_page.enter_profession
practice_form_page.enter_automation_tool
practice_form_page.enter_continent
