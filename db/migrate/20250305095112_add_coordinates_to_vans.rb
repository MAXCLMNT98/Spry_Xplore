class AddCoordinatesToVans < ActiveRecord::Migration[7.1]
  def change
    add_column :vans, :latitude, :float
    add_column :vans, :longitude, :float
  end
end
