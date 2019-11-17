class AddUserToTaxes < ActiveRecord::Migration[6.0]
  def change
    add_reference :taxes, :user, null: false, foreign_key: true
  end
end
