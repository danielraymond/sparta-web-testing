## Page Object Model

### Brief
This is a programme created to practice creating a page object model and running tests on the data entered into a form.

RSPEC and selenium-webdriver are needed to run this programme.

Run in terminal:
```
gem install selenium-webdriver
gem install rspec
```

### How to add a tests
In order to add a test to check the functionality of the form ([Form Link](http://demoqa.com/registration/)) a method must be created using selenium to find the page element e.g.

``` ruby
def set_first_name_field(first_name)
  @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_keys(first_name)
end
```

To add a test for this method to check whether the first name was set and is a string the following should be added to a spec file. e.g.

``` ruby
it 'should accept a first name' do
  @driver.set_first_name_field('Daniel')
  expect(@driver.get_first_name_field_value).to eq('Daniel')
end
```

Documentation for rspec and selenium can be found at the following links:

[Selenium Documentaion](http://docs.seleniumhq.org/docs/)

[RSPEC Documentation](http://www.rubydoc.info/gems/rspec-core/RSpec)


### Difficulties
I had difficulties writing the selenium selection code for the marital status and hobby sections. The hobby in particular won't run if the cricket hobby is selected.

I also had difficulties with knowing what tests to run to check the correct data had been entered.

### What went well
I managed to get the basic field input tests and methods working fairly easily.

## Capybara


Documentation for capybara can be found at the following link:

[Capybara Documentation](https://github.com/teamcapybara/capybara)

### Brief

A programme written using the Capybara framework to test log in and sign up functions on the BBC website.

In order to use the program the capybara and rspec gems are needed.

Need to run in terminal:

```
gem install capybara
gem install rspec
```

In order to write a test in rspec for capybara a step by step set of methods must be run to take you step by step through the webpage. e.g.

```ruby
it 'should produce an error when inputting an incorrect password to a valid account' do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_home_page
  @bbc_site.bbc_homepage.click_sign_in_link
end
```

This is code you put in the spec file which would test whether the sign in link on the homepage works.

The method for this is written using capybara helpers such as:

```ruby
def sign_in_link
  find(SIGN_IN_LINK_ID)
end

def click_sign_in_link
  sign_in_link.click
end
```

Here a constant is used for the sign in link id and these methods find and click the sign in link button on the bbc homepage.

The tests in this programme are designed to check the error text that comes up when incorrect or duplicate information is used when logging in or signing up for an account. Tests are also run to check logging in and signing up works when correct information is supplied.

In order to write a test for an action made using capybara

### What went well

Using the capybara helpers to find and interact with page elements went well and the tests were simple to write.
