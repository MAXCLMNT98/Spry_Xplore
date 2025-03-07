class AddStatusToVans < ActiveRecord::Migration[7.1]
  def change
    add_column :vans, :status, :string
  end
end
