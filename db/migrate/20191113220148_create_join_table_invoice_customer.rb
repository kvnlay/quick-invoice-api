class CreateJoinTableInvoiceCustomer < ActiveRecord::Migration[6.0]
  def change
    create_join_table :invoices, :customers do |t|
      # t.index [:invoice_id, :customer_id]
      # t.index [:customer_id, :invoice_id]
    end
  end
end
