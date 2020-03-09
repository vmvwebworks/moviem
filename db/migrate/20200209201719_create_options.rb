class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.decimal :price, precision: 5, scale: 2
      t.references :optionable, polymorphic: true
      t.references :quality
      t.timestamps
    end
  end
end
