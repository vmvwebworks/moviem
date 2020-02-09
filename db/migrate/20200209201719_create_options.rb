class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.references :purchase
      t.integer :price
      t.string :quality
      t.timestamps
    end
  end
end
