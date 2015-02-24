class CreateTallies < ActiveRecord::Migration
  def change
    create_table :tallies do |t|
      t.string :title
      t.text :description
      t.references :status, index: true
      t.string :city
      t.date :date_completed

      t.timestamps
    end
  end
end
