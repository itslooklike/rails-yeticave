class Lot < ApplicationRecord
  validates :name, :description, :start_price, :bet_step, :finish_date, :category_id, presence: true

  belongs_to :category
end
