class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.numeric :sum
      t.numeric :user_id
      t.numeric :lot_id
      t.timestamps
    end
  end
end
