class CreateWalls < ActiveRecord::Migration[6.1]
  def change
    create_table :walls, id: :uuid do |t|
      t.string :message, null: false
      t.uuid :user_id, null: false

      t.timestamps
    end
  end
end
