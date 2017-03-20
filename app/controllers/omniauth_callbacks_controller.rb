class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def index
    @user = User.all
  end

  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    # render text: request.env['omniauth.auth'].to_yaml

    @user = User.from_omniauth(request.env["omniauth.auth"])
    
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
      # set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
      flash[:notice] = "Signed in successfully."
      # flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
    else
      session["devise.google_data"] = request.env["omniauth.auth"].except(:extra) #Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  def failure
    # redirect_to root_path
    # render :text => request.env["omniauth.auth"].to_yaml
    redirect_to new_user_registration_url
    flash[:notice] = I18n.t "Thats fine"
  end
end