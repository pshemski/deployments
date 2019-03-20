class CreateInvoices < ActiveRecord::Migration
  def up
    create_table :invoices do |t|
      t.integer :po
      t.string :invoice_number
      t.datetime :invoice_date

      t.timestamps null: false
    end
  end

  def down
    drop_table :invoices
  end
end
