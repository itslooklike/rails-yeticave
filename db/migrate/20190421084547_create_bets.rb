class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.numeric :sum
      t.belongs_to :lot, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
