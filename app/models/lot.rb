class Lot < ApplicationRecord
  belongs_to :category
  has_many :bets

  validates(
    :name,
    :description,
    :start_price,
    :bet_step,
    :finish_date,
    :category_id,
    :image_url,
    presence: true
  )
end
