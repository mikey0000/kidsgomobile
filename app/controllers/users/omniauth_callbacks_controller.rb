class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_oauth(request.env["omniauth.auth"])

    unless @user.blank?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.oauth_data"] = request.env["omniauth.auth"]
      redirect_to new_user_session_path
    end
  end

  def twitter
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_oauth(request.env["omniauth.auth"])

    unless @user.blank?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
    else
      session["devise.oauth_data"] = request.env["omniauth.auth"]
      redirect_to new_user_session_path
    end
  end

  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_oauth(request.env["omniauth.auth"])

    unless @user.blank?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
    else
      session["devise.oauth_data"] = request.env["omniauth.auth"]
      redirect_to new_user_session_path
    end
  end
end
