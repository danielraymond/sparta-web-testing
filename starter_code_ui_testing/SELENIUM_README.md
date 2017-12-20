## Selenium

In order to run the tests enter the following in your terminal:

```
rspec
```

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
