class LoginPage
  include PageObject
  page_url "http://demo.redmine.org/login"
  text_field :login, id: 'user_login'
  text_field :password, id: 'user_password'

  def login_as(login)
    # login = rand(999).to_s + 'login'
    password = 'nilnil'
    # @browser.find_element(:class, 'login').click
    # @browser.find_element(:id, 'username').send_keys login
    # @browser.find_element(:id, 'password').send_keys password
    # @browser.find_element(:name, 'login').click
  end
end