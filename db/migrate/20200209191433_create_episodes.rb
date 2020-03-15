class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.references :season
      t.string :title
      t.string :plot
      t.integer :number, unique: true
      t.timestamps
    end
  end
end
