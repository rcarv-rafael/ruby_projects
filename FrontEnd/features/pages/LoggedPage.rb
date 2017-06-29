class LoggedPage < SitePrism::Page
  element :msg, "#flash"

  def clicar_logoff
    click_link('Logout')
  end

  def texto_mensagem
    msg.text
  end

end