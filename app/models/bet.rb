class Bet < ApplicationRecord
  belongs_to :lot
  belongs_to :user

  validates :sum, :user_id, :lot_id, presence: true
end
