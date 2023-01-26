class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.date :birth_date
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
    add_index :users, :username
    add_index :users, :email
  end
end
