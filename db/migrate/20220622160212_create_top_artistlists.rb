class CreateTopArtistlists < ActiveRecord::Migration[7.0]
  def change
    create_table :top_artistlists do |t|
      t.integer :user_id
      t.string :artistlist, array: true, default: []

      t.timestamps
    end
  end
end
