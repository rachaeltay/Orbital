class Update < ActiveRecord::Base
  after_save :send_email_notifications
  
  validates_presence_of :post_id, :body
  
  def send_email_notifications
    UpdateMailer.update_notification(self).deliver
  end
end
