Feature: Webdriveruniverty - login Page

    Background: Pre Conditions
        Given I navigate to the webdriveruniversity homepage
        When I click on the login portal button

    Scenario Outline: Validate Login Page
        And I type a username '<username>'
        And I type a password '<password>'
        And I click the login button
        Then I should be presented with alert message '<message>'

        Examples:
            | username      | password     | message              |
            | webdriver     | webdriver123 | validation succeeded |
            | usuarioerrado | webdriver123 | validation failed    |
            | webdriver     | senhaerrada  | validation failed    |
            | usuarioerrado | senhaerrada  | validation failed    |