class CreateVans < ActiveRecord::Migration[7.1]
  def change
    create_table :vans do |t|
      t.string :fuel
      t.string :model
      t.integer :price
      t.string :surface
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
