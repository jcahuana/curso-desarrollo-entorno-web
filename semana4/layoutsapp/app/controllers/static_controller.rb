class StaticController < ApplicationController
  layout 'static'

  def about
  end

  def services
  end

  def faq
  end

  def mypage
    render :about
  end

  def contact
  end

  def mimetodo
    puts "Datos recibidos del formulario."

    a = params[:upc][:titulo]
    b = params[:upc][:descripcion]

    puts "Titulo enviado: #{a}"
    puts "Descripción enviada: #{b}"
  end
end
