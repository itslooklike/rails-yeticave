class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.numeric :sum
      t.references :lot, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
