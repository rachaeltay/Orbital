class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         
  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #     user.oauth_token = auth.credentials.token 
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #   end
  # end
  
  def self.from_omniauth(auth)
    user = where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user
  end
  
  def friendslist
    facebook = Koala::Facebook::API.new(oauth_token, 'ea956f4f3fd3879d7581de644807d7b2')
    facebook.get_connections("me", "friends?fields=id,name,picture.type(large)")
  end

  private
  
  def self.koala(auth)
    access_token = auth['token']
    
    @graph = Koala::Facebook::API.new(current_user.facebook_oauth_setting.oauth_token)
    @profile = @graph.get_object("me")
		@picture = @graph.get_picture("me")
		@feed = @graph.get_connections("me","feed")
		@friends = @graph.get_connections("me", "friends", api_version: "v2.0")
  end
  
end
