class AddItemToTax < ActiveRecord::Migration[6.0]
  def change
    add_reference :taxes, :item, null: false, foreign_key: true
  end
end
