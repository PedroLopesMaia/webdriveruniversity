Feature: Webdriveruniverty - Contact Us Page

    Background: Pre Conditions
        Given I navigate to the webdriveruniversity homepage
        When I click on the contact us button
    
    Scenario: Valid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I enter an email address
        And I type a comment
        And I click on the submit button
        Then I should be presented with a successful contact us submission message

    Scenario: Invalid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I type a comment
        And I click on the submit button
        Then I should be presented with a unsuccessful contact us submission message

    Scenario: Valid Contact Us Form Submission - Using specific data
        And I type a specific first name "Sarah"
        And I type a specific last name "Woods"
        And I enter an specific email address "sarah_woods101@mail.com"
        And I type a specific word "hello123" and number 6788 within the comment input field
        And I click on the submit button
        Then I should be presented with a successful contact us submission message

    Scenario Outline: Validate contact us page
        And I type a first name <firstname> and a last name '<lastname>'
        And I type a '<email>' and a '<comment>'
        And I click on the submit button
        Then I should be presented with header text '<message>'

        Examples:
            | firstname | lastname | email                | comment               | message                      |
            | Pedro     | Lopes    | pedrolopes@email.com | comnetário1010101     | Thank You for your Message!  |
            | John      | Silva    | johnsilva@email.com  | comnetário1017841     | Thank You for your Message!  |
            | Grace     | Maria    | email.com            | comnetáridsdso1010101 | Error: Invalid email address |