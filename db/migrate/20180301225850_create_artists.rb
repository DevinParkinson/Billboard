class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.belongs_to :chart, foreign_key: true

      t.timestamps
    end
  end
end
