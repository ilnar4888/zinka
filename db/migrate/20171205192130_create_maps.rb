class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :address, null: false  
      t.string :address_name, null: false  
      t.float "latitude", null: false
      t.float "longitude", null: false
      t.timestamps 
    end
  end
end
