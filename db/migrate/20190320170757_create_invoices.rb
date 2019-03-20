class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :po
      t.string :invoice_number
      t.datetime :invoice_date

      t.timestamps null: false
    end
  end
end
