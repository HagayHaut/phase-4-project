class CreateTopTracklists < ActiveRecord::Migration[7.0]
  def change
    create_table :top_tracklists do |t|
      t.integer :user_id
      t.string :tracklist, array: true, default: []

      t.timestamps
    end
  end
end
