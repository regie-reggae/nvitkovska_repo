class MyAccountPage
  include  PageObject
  div :flash_notice, id: 'flash_notice'
  link :log_out, class: 'logout'
  link :log_in, name: 'login'

  def registered?
    flash_notice_element.when_visible.visible?
  end

  def logout
    log_out_element.click if log_out_element.visible?
  end

  def login
    login_element.click if log_in_element.visible?
  end
end