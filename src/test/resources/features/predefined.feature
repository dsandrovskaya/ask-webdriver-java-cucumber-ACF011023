@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"
  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "http://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Java" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//iframe[@id='master-1']" to be present

  @predefined3
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Java" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//article[@id='ra-0']" to be present
    Then element with xpath "//article[@id='ra-0']" should contain text "Java"
  @predefined4
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then element with xpath "//input[@class='input-search']" should be present
    When I type "Java" into element with xpath "//input[@class='input-search']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Java"

  @predefined5 
  Scenario: Predefined steps for Searchencrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@type='text']" should be present
    When I type "Java" into element with xpath "//input[@type='text']"
    Then I click on element using JavaScript with xpath "//div[@id='app']"
    Then I wait for element with xpath "//section[@class='ia--related-searches instant-answer ia--unboxed']" to be present

  @predefined6
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com"
    Then I should see page title contains "Startpage"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Java" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='search-btn']"
    Then I wait for element with xpath "//div[@class='layout-web__mainline']" to be present
    Then element with xpath "//div[@class='layout-web__mainline']" should contain text "Java"

  @predefined7
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Java" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@data-test-id='layout-content']" to be present
    Then element with xpath "//div[@data-test-id='layout-content']" should contain text "Java"

  @predefined8
  Scenario: Predefined steps for Givewater
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "giveWater"
    Then I wait for element with xpath "//div[@id='popmake-172']" to be present
    Then I click on element with xpath "//button[@class='pum-close popmake-close']"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Java" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Java"
  @predefined9
  Scenario: Predefined steps for Ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title contains "Ekoru"
    Then element with xpath " //input[@id='fld_q']" should be present
    When I type "Java" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@class='serp-result-web-text']" to be present
    Then element with xpath "//div[@class='serp-result-web-text']" should contain text "Java"

  