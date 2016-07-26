class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :code
      t.boolean :on, default: false, null: false

      t.timestamps
    end

    add_index :rooms, :code, unique: true
  end
end
