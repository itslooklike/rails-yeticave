class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.datetime :reg_date
      t.string :email
      t.string :name
      t.string :password
      t.string :avatar_url
      t.string :contact
      t.timestamps
    end
  end
end
