class ApplicationController < ActionController::Base
 before_action :set_current_user
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def authenticate_user
    if @current_user == nil
      flash[:notice] = "You need to log in"
      redirect_to("/login")
    end
  end
  
  # forbid_login_userメソッドを定義してください
  def forbid_login_user
    if @current_user
      flash[:notice] = "You have already logged in"
      redirect_to("/posts/index")
    end
  end

end

