class LoginPage < SitePrism::Page
  set_url "https://the-internet.herokuapp.com/login"

  element :user, "input[name='username']"
  element :pass, "input[name='password']"
  element :msg, "#flash"

  def preencher_campos
    user.set $usuario
    pass.set $senha
    
  end

  def clicar_login
    click_button('Login')
  end

  def texto_mensagem
    msg.text
  end

end