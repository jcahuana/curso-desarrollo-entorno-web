module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
    session[:user_email] = user.email
  end

  def current_user
    # Variable de instancia para recuperar los datos del usuarios que se encuentra loguado
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Validar si esta logueado, pregunta si ya ingresó al sistema
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    session.delete(:user_email)
    @current_user = nil
  end

end
