class ChangeCatTable < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :image_url, :string, null: false
  end
end
