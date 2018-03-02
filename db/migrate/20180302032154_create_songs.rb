class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artists, foreign_key: true
      t.belongs_to :chart, foreign_key: true

      t.timestamps
    end
  end
end
