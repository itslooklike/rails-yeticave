class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.string :name
      t.string :description
      t.numeric :start_price
      t.numeric :bet_step
      t.numeric :author_id
      t.numeric :winner_id
      t.datetime :finish_date
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
