class Merchant < ApplicationRecord

  has_many :items
  has_many :invoices
  has_many :customers, through: :invoices
  has_many :invoice_items, through: :invoices

  def total_revenue
    paid = self.invoices.successful
    bulk_items = paid.to_a.map! { |invoice| invoice.invoice_items }
    paid_items = bulk_items.flatten
    paid_items.map! { |item| item.unit_price.to_f * item.quantity }
    total = paid_items.reduce(0) { |sum, p| sum + p }
    result = total / 100
    {"revenue" => "#{result}"}
  end
end
