require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://demoqa.com/registration/'
  # Page field
  FIRST_NAME_FIELD =  'name_3_firstname'# id
  LAST_NAME_FIELD =  'name_3_lastname'# id
  MARITAL_STATUS =  # id
  HOBBY_STATUS =  # values
  COUNTRY_DROP_DOWN_LIST =  # id
  DOB_MONTH_DROPDOWN_LIST =  # id
  DOB_DAY_DROPDOWN_LIST =  # id
  DOB_YEAR_DROPDOWN_LIST =  # id
  PHONE_NUMBER_FIELDS =  # id
  USERNAME_FIELD =  # id
  EMAIL_FIELD =  # id
  PROFILE_PICTURE_BUTTON =  # id
  DESCRIPTION_FIELD =  # id
  PASSWORD_FIELD = # id
  CONFIRM_PASSWORD_FIELD =  # id
  SUBMIT_BUTTON = # name
  REGISTRATION_CONFIRMATION = #class

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  # first name field management - Difficulty Easy

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD)['value']
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).displayed?
    sleep 1
  end

  # last name field management - Difficulty Easy

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, LAST_NAME_FIELD)['value']
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).displayed?
    sleep 1
  end

  # Marital option management - Difficulty Medium

  def select_marital_option(marital_status)
    # Consider something like a case statement and check the selenium selected? method
    options = @chrome_driver.find_elements(:name, 'radio_4[]')
    options.each do |option|
      if option['value'] == marital_status
        option.click
        return option.selected?
      end
    end
  end

  def generate_random_marital_status
    x = rand(3).floor
    if x == 0
      select_marital_option('single')
    elsif x == 1
      select_marital_option('married')
    else
      select_marital_option('divorced')
    end
  end

  # hobby option management - Difficulty Medium

  def select_hobby_option(hobby)
    # Consider something like a case statement and check the selenium selected? method
    options = @chrome_driver.find_elements(:name, 'checkbox_5[]')
    options.each do |option|
      if option['value'] == hobby
        option.click
        return option.selected?
      end
    end
  end

  def generate_random_hobby
    rand_hobby = rand(3).floor
    if rand_hobby == 0
      select_hobby_option('dance')
    elsif rand_hobby == 1
      select_hobby_option('reading')
    elsif rand_hobby == 2
      select_hobby_option('cricket')
    end
  end

  # Select Country - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def get_selected_country
    country_options = @chrome_driver.find_element(:id, 'dropdown_7')
    @chrome_driver.find_element(:tag_name, 'option')['value']

  end

  def country_dropdown_list_select(country)
  end

  # DOB management - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def dob_month_list_select(month_value)

  end

  def dob_day_list_select(day_value)

  end

  def dob_year_list_select(year_value)

  end


  # Phone number field management - Difficulty Easy

  def set_phone_number_field(phone_number)
  end

  def get_phone_number_field_value
  end

  #  username field management - Difficulty Easy

  def set_user_name_field(user_name)
  end

  def get_user_name_field_value
  end

  # Email field management - Difficulty Easy

  def set_email_field(email)
  end

  def get_email_field_value
  end

  # about yourself / description field - Difficulty Easy

  def set_about_yourself_field(details)
  end

  def get_about_yourself_value
  end

  # Password management - Difficulty Easy

  def set_password_field(password)
  end

  def get_password_value
  end

  def set_confirmation_password_field(password)
  end

  def get_confirmation_password_value
  end

  # registration confirmation - Difficulty Easy

  def click_submit
  end

  def check_registration_successful
  end
end
