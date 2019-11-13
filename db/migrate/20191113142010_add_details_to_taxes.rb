class AddDetailsToTaxes < ActiveRecord::Migration[6.0]
  def change
    add_column :taxes, :type, :string
    add_column :taxes, :value, :integer
    add_column :taxes, :name, :string
  end
end
