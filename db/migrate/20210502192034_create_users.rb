class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :nickname, null: false, index: { unique: true }
      t.string :avatar_color

      t.timestamps
    end
  end
end
