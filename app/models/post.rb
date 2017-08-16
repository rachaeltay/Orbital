class Post < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  
  validates :title, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :picture, presence: true
  validates :contact_number, numericality: { only_integer: true }, allow_blank: true
  validates_presence_of :tag
  
  mount_uploader :picture, PictureUploader
  
  belongs_to :user
  has_many :signups
  has_many :updates
  
end
