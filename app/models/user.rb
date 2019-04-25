class User < ApplicationRecord
  has_many :bets
  validates :email, :password, presence: true

  has_secure_password
end
