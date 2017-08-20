class UpdateMailer < ApplicationMailer
  default from: 'update@vento.com'
  
  def update_notification(update)
    @update = update
    @post = Post.find(@update.post_id)
    if !@post.signups.nil?
      @post.signups.each do |signup| 
        @user = User.find(signup.user_id)
        mail(to: @user.email, subject: @post.title + ' update ' + @post.updates.count.to_s)
      end
    end
  end
end
