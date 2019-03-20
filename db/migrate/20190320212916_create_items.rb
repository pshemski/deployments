class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :category, index: true, foreign_key: true
      t.references :model, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true
      t.references :invoice, index: true, foreign_key: true
      t.references :parent, index: true
      t.string :serial_number
      t.string :barcode
      t.string :country_of_orgin
      t.decimal :price, precision: 8, scale: 2
      t.decimal :weight, precision: 5, scale: 2
      t.string :state
      t.text :note

      t.timestamps null: false
    end
  end
end
