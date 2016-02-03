Given(/^On registration page$/) do
  visit(RegistrationPage)
end

When(/^I submit valid data$/) do
  on(RegistrationPage).register
end

Then(/^I am registered$/) do
  expect(on(MyAccountPage)).to be_registered
end