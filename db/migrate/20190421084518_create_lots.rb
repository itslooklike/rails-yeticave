class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.datetime :create_date
      t.string :name
      t.string :description
      t.string :image_url
      t.numeric :start_price
      t.datetime :finish_date
      t.numeric :bet_step
      t.numeric :author_id
      t.numeric :winner_id
      t.numeric :category_id
      t.timestamps
    end
  end
end
