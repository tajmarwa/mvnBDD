Feature: Order T-Shirt and Update User details

  Scenario: Order T-Shirt
    Given I navigate to "http://automationpractice.com/index.php"
    And I enter "T-Shirt" into input field having id "search_query_top"
    When I click on element having name "submit_search"
    Then I wait 5 seconds for element having class "product-count" to display
    When I click on element having class "product-container"
    And I click on element having id "add_to_cart"
    Then I wait 5 seconds for element having class "icon-ok" to display
    When I click on element having xpath "//a[@title='Proceed to checkout']"
    Then I wait 5 seconds for element having id "cart_title" to display

  Scenario: Update First Name of the user in User details section
    Given I navigate to "http://automationpractice.com/index.php"
    When I click on element having class "login"
    And I enter "singh.marwah@gmail.com" into input field having id "email"
    And I enter "password123" into input field having id "passwd"
    When I click on element having id "SubmitLogin"
    Then I wait 5 seconds for element having class "header_user_info" to display
    When I click on element having class "header_user_info"
    And I click on element having xpath "//span[contains(text(),'My personal information')]"
    Then I wait 5 seconds for element having xpath "//span[@class='navigation_page' and contains(text(),'Your personal information')]" to display
    When I click on element having id "firstname"
    And I enter "randomText" into input field having id "firstname"
    And I enter "password123" into input field having id "old_passwd"
    And I click on element having name "submitIdentity"
    Then I wait 5 seconds for element having xpath "//p[@class='alert alert-success']" to display


