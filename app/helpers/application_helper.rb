module ApplicationHelper
  def format_price(price)
    number_with_precision price, { delimiter: ' ', precision: 0 }
  end

  def format_date(date)
    I18n.localize date, format: "%d %b %H:%M"
  end
end
