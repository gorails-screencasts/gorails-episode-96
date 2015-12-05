class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :notifications, foreign_key: :recipient_id
  has_many :forum_threads
  has_many :forum_posts
end
