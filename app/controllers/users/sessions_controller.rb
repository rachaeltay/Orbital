class Users::SessionsController < Devise::SessionsController
  before_action :facebook, only: [:new]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
    if env["omniauth.auth"]
      user = User.from_omniauth(env["omniauth.auth"])
      auth_hash = request.env['omniauth.auth']
      render :text => auth_hash.inspect
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  
  private
    def facebook
      @oauth = Koala::Facebook::OAuth.new('487673968237355', 'ea956f4f3fd3879d7581de644807d7b2', 'https://orbital-soraares.c9users.io/auth/facebook/callback/')
      @url = @oauth.url_for_oauth_code(:permissions => 'user_friends')
    end
end
