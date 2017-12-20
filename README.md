## Page Object Model

### Brief
This is a programme created to practice creating a page object model and running tests on the data entered into a form.

RSPEC and selenium-webdriver are needed to run this programme.


### Difficulties
I had difficulties writing the selenium selection code for the marital status and hobby sections. The hobby in particular won't run if the cricket hobby is selected.

I also had difficulties with knowing what tests to run to check the correct data had been entered.

### What went well
I managed to get the basic field input tests and methods working fairly easily.

## Capybara

### Brief

A programme written using the Capybara framework to test log in and sign up functions on the BBC website.

In order to use the program the capybara gem is needed.

Need to run in terminal:

```
gem install capybara
```

The tests are designed to check the error text that comes up when incorrect or duplicate information is used when logging in or signing up for an account. Tests are also run to check logging in and signing up works when correct information is supplied.

### What went well

Using the capybara helpers to find and interact with page elements went well and the tests were simple to write.
