Feature: login

Background: Registration
  Given On registration page
  And I submit valid data

Scenario: Positive login
  Given I am not logged in
  When I submit valid credentials
  Then I am logged in
#
#Scenario: Negative login expired account
#  Given My account is expired
#  When I log in to home page
#  Then I see a message 'your account is expired'
#
#Scenario: Negative login with wrong credentials
#  Given I have a registered account but forgot credentials
#  When I log in to home page
#  And I forget my username or password
#  Then I see a message 'please make sure that your username or password is correct'

