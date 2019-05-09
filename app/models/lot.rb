class Lot < ApplicationRecord
  belongs_to :category
  has_many :bets
  has_one_attached :image

  validates(
    :name,
    :description,
    :start_price,
    :bet_step,
    :finish_date,
    :category_id,
    presence: true
  )
end
