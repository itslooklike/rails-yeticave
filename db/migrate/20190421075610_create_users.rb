class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :avatar_url
      t.string :contact
      t.timestamps
    end
  end
end
