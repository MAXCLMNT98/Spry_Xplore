class AddImageUrlToVans < ActiveRecord::Migration[7.1]
  def change
    add_column :vans, :image_url, :string
  end
end
