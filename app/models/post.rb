class Post < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  
  validates :title, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :picture, presence: true
  validates :contact_number, numericality: { only_integer: true }, length: { is: 8 }
  
  mount_uploader :picture, PictureUploader
  
  belongs_to :user
  has_many :signups
end
