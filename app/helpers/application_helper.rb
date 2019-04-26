module ApplicationHelper
  def format_price(price)
    number_with_precision price, { delimiter: ' ', precision: 0 }
  end

  def format_date(date)
    date.to_s :short
  end
end
