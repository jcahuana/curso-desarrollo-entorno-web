class SessionsController < ApplicationController
  # Para incluir los metodos n helper de forma manual, noes necesario solo en caso sea un helper de otro controlador
  include SessionsHelper

  def new
  end

  def create
    # params hace referencia al hash que se envía mediante el formulario
    user = User.find_by(email: params[:session][:email].downcase, password: params[:session][:password])
    if user
      log_in(user)
      redirect_to :root
    else
      flash[:danger] = 'Credenciales no válidas.'
      render :new
    end
  end

  def destroy
    if logged_in?
      log_out
    end
    redirect_to :root
  end
end
