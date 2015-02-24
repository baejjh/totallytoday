class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :last_name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.text :short_description
      t.text :quote

      t.timestamps
    end
  end
end
