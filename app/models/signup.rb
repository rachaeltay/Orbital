class Signup < ActiveRecord::Base
  validates :user_id, presence: true
  validates :post_id, presence: true
  
  belongs_to :User
  belongs_to :Post
end
