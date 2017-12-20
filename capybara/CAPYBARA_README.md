## Capybara

In order to run the tests enter the capybara_RSpec_pom and run the following in your terminal:

```
rspec
```


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
