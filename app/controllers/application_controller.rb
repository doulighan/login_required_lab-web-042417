class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user


  def current_user
   session[:name]
  end

  def hello
    
  end

  
  def require_loggin
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
