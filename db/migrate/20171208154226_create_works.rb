class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.string :price
      t.boolean :display, default: false
      t.timestamps
    end
  end
end
