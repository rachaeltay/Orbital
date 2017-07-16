class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.oauth_token = auth.credentials.token 
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    end
  end
  
  def friendslist
    facebook.get_connections("me", "friends")
    # facebook {|fb| fb.get_connection("me", "invitable_friends")}.each do |hash| 
    #   self.friends.find_or_create_by(:name => hash['name'], :uid => hash['id'])
    # end
    # facebook.get_connection("me", "friends",api_version:"v2.0").raw_response["summary"]["total_count"]
    # facebook.get_connections("me", "friends", api_version: "v2.0")
  end

  private
  
  def self.koala(auth)
    access_token = auth['token']
    # facebook = Koala::Facebook::API.new(access_token)
    # facebook.get_object("me?fields=name,picture")
    
    @graph = Koala::Facebook::API.new(current_user.facebook_oauth_setting.access_token)
    @profile = @graph.get_object("me")
		@picture = @graph.get_picture("me")
		@feed = @graph.get_connections("me","feed")
		@friends = @graph.get_connections("me", "friends", api_version: "v2.0")
  end
  
end
