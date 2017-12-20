require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq('http://demoqa.com/registration/')
    end

    it 'should accept a first name' do
      @driver.set_first_name_field('Daniel')
      expect(@driver.get_first_name_field_value).to eq('Daniel')
      @driver.first_name_field_displayed
    end

    it 'should accept a last name' do
      @driver.set_last_name_field('Raymond')
      expect(@driver.get_last_name_field_value).to eq('Raymond')
      @driver.last_name_field_displayed
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.generate_random_marital_status).to be true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.generate_random_hobby).to be true
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq('Afghanistan')
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('4')
      @driver.dob_day_list_select('26')
      @driver.dob_year_list_select('1996')
    end

    it 'should accept a new country value' do
      x = @driver.country_dropdown_list_select('Egypt')
      expect(x).to be_kind_of(String)
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field(7624163823)
      expect(@driver.get_phone_number_field_value).to be_kind_of(String)
    end

    it 'should accept a username' do
      @driver.set_user_name_field('draymond')
      expect(@driver.get_user_name_field_value).to be_kind_of(String)
    end

    it 'should accept an email' do
      @driver.set_email_field('email@email.com')
      expect(@driver.get_email_field_value).to be_kind_of(String)
    end

    it "should accept an about yourself" do
      @driver.set_about_yourself_field('I am a person')
      expect(@driver.get_about_yourself_value).to eq('I am a person')
    end

    it 'should accept a password' do
      @driver.set_password_field('password')
      expect(@driver.get_password_value).to be_kind_of(String)
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('password')
      expect(@driver.get_confirmation_password_value).to be_kind_of(String)
    end

    it "submit button should work" do
      @driver.click_submit
    end

  end

end
