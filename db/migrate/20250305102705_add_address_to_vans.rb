class AddAddressToVans < ActiveRecord::Migration[7.1]
  def change
    add_column :vans, :address, :string
  end
end
