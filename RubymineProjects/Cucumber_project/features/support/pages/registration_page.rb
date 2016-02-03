class RegistrationPage
  include PageObject
  page_url "http://demo.redmine.org/account/register"

  text_field :login, id: 'user_login'
  text_field :password, id: 'user_password'
  text_field :confirmation, id: 'user_password_confirmation'
  text_field :first_name, id: 'user_firstname'
  text_field :last_name, id: 'user_lastname'
  text_field :email, id: 'user_mail'
  button :submit, name: 'commit'

  def register
    login_element.when_visible.send_keys login
    self.login = rand(999).to_s + 'login'
    self.password = 'nilnil'
    self.confirmation = 'nilnil'
    self.first_name = 'aaaaa'
    self.last_name = 'ooooo'
    self.email = login + '@dfdfd.dfd'
    submit
  end
end

