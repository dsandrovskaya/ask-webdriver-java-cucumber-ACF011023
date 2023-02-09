# Test Automation Exercise - Cucumber

@quote
Feature: Quote Test Scenarios

  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I resize window to 1920 and 1080

  @quote1
  Scenario: Verify the responsiveness of Quote application
    #Given I open url "https://skryabin.com/market/quote.html"
   # Then I should see page title as "Get a Quote"
    #desktop mode
    Then I resize window to 1920 and 1080
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
    #iphone mode
    Then I resize window to 375 and 667
    Then element with xpath "//b[@id='location']" should not be displayed

  @quote2
  Scenario: Verify Username field
     # Given I open url "https://skryabin.com/market/quote.html"
     # Then I should see page title as "Get a Quote"
      #Then I resize window to 1920 and 1080
    Then element with xpath "//input[@name='username']" should be present
    Then I type "A" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
    Then I clear element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should have text as "This field is required."
    Then I type "Ab" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

  @quote3
  Scenario: Verify Name field
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//input[@id='firstName']" should be displayed
    Then I type "First" into element with xpath "//input[@id='firstName']"

    Then element with xpath "//input[@id='middleName']" should be displayed
    Then I type "Middle" into element with xpath "//input[@id='middleName']"

    Then element with xpath "//input[@id='lastName']" should be displayed
    Then I type "Last" into element with xpath "//input[@id='lastName']"

    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for element with xpath "//input[@id='name']" to be present
    Then element with xpath "//input[@id='name']" should have attribute "value" as "First Middle Last"
  # test scenario with data driven case

  @quote4
  Scenario Outline: Verify Name field
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//input[@id='firstName']" should be displayed
    Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"

    Then element with xpath "//input[@id='middleName']" should be displayed
    Then I type "<MiddleName>" into element with xpath "//input[@id='middleName']"

    Then element with xpath "//input[@id='lastName']" should be displayed
    Then I type "<LastName>" into element with xpath "//input[@id='lastName']"

    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for element with xpath "//input[@id='name']" to be present
    Then element with xpath "//input[@id='name']" should have attribute "value" as "<FullName>"
    Examples:
      | FirstName | MiddleName | LastName | FullName          |
      | First     | Middle     | Last     | First Middle Last |
      |           | A          | B        | A B               |

  @quote4
  Scenario Outline: Validate” Email” field behavior Negative
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I resize window to 1920 and 1080
    Then I click on element with xpath "//input[@name='email']"
    Then I type "<Email>" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I clear element with xpath "//input[@name='email']"
    Examples:
      | Email             |
      | student3gmail.com |
      | student3@.com     |
      | student3@gmail.   |
      | #@%^%#$@#$@#.com  |
      #|student3@gmailcom| Bug -Test failed

  @quote5
  Scenario: Validate” Email” field behavior Positive
    Then I click on element with xpath "//input[@name='email']"
    Then I type "student3@gmail.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should not be present
    Then I clear element with xpath "//input[@name='email']"

  @quote6
  Scenario: Validate Password/Confirm Password field
    Then I click on element with xpath "//button[@id='formRefresh']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    When I type "12345" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    When I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='confirmPassword-error']" should contain text "required"
    When I type "123456" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='confirmPassword-error']" should be displayed

  @quote7
  Scenario: Validate that Accepting Privacy Policy is required
    When I click on element with xpath "//button[@id='formRefresh']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be present
    When I click on element with xpath "//button[@id='formSubmit']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be present

  @quote8
  Scenario: Optional submit form
  Then I type "12121212" into element with xpath "//input[@name='phone']"
  And I click on element with xpath "//select[@name='countryOfOrigin']"
  And I click on element with xpath "//select[@name='countryOfOrigin']/option[@value='Germany']"
  And I click on element with xpath "//input[@name='gender'][@value='female']"
  And I click on element with xpath "//input[@name='allowedToContact']"
  And I type "ABCD" into element with xpath "//textarea[@id='address']"
  And I click on element with xpath "//option[contains(text(),'Toyota')]"
  And I click on element with xpath "//button[@id='thirdPartyButton']"
  And I accept alert
  And I click on element with xpath "//input[@id='dateOfBirth']"
  And I click on element with xpath "//option[@value=3]"
  And I click on element with xpath "//option[@value=1950]"
  And I click on element with xpath "//a[@class='ui-state-default'][text()=12]"
    And I type "John" into element with xpath "//input[@id='name']"
    And I type "Smith" into element with xpath "//input[@name='username']"
    And I type "student3@gmail.com" into element with xpath "//input[@name='email']"
    And I type "12345" into element with xpath "//input[@id='password']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
  When I click on element with xpath "//button[@id='formSubmit']"
  Then element with xpath "//div[@id='quotePageResult']" should be present
  And element with xpath "//b[@name='phone']" should have text as "12121212"
  And element with xpath "//b[@name='countryOfOrigin']" should have text as "Germany"
    And element with xpath "//b[@name='gender']" should have text as "female"
    And element with xpath "//b[@name='allowedToContact']" should have text as "true"
    And element with xpath "//b[@name='address']" should have text as "ABCD"
    And element with xpath "//b[@name='carMake']" should have text as "Toyota"
  And  element with xpath "//b[@name='thirdPartyAgreement']" should have text as "accepted"
    And element with xpath "//b[@name='address']" should have text as "ABCD"
  And element with xpath "//b[@name='dateOfBirth']" should have text as "04/12/1950"
    And element with xpath "//b[@name='name']" should have text as "John"
    And element with xpath "//b[@name='username']" should have text as "Smith"
    And element with xpath "//b[@name='password']" should have text as "[entered]"
    And element with xpath "//b[@name='email']" should have text as "student3@gmail.com"








