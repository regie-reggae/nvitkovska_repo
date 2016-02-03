Given(/^I have a registered account$/) do
  @user = visit(RegistrationPage).register
end

When(/^I log in to home page$/) do
  on(MyAccountPage).logout
  on(LoginPage).login_as(@user)
end

Then(/^I am logged in$/) do
  expect(on(HomePage)).to be_logged_in_as(@user)

end


Given(/^I am not logged in$/) do
  on(MyAccountPage).logout
end

When(/^I submit valid credentials$/) do
  on(LoginPage).login_as(@user)
end
