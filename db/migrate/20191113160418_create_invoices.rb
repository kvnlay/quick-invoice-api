class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :title
      t.datetime :due_date
      t.string :status
      t.decimal :amount_paid
      t.decimal :due_amount

      t.timestamps
    end
  end
end
