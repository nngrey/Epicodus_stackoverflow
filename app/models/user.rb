class User < ActiveRecord::Base
  has_secure_password

  validates :user_name, :presence => true
  validates :password_digest, :presence => true
  has_many :questions
  has_many :answers

  validates_uniqueness_of :user_name
end
