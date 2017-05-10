class InvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :invoice

  def self.invoice_totals
    group(:invoice_id).sum("quantity * unit_price")
  end
  
end
