class AddInvoiceToItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :invoice, null: false, foreign_key: true
  end
end
