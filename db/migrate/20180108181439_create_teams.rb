class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :title
      t.text :description
      t.string :team_image_id
      t.timestamps
    end
  end
end