class User < ApplicationRecord
  has_many :color_schemes
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :email_address, presence: true, uniqueness: true, email: true
end
