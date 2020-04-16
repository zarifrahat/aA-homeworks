class AddHousesIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :houses_id, :integer, null:false
  end
end
