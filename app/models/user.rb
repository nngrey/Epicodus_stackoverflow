class User < ActiveRecord::Base
  validates :user_name, :presence => true
  validates :password_digest, :presence => true
  has_many :questions
  has_many :answers
end
