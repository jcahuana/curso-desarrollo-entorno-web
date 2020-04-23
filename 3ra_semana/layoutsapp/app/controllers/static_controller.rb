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
end
