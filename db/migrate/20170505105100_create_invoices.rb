class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :merchant, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
