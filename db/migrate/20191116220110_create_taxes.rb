class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.integer :rate
      t.string :type
      t.string :name
      t.timestamps
    end
  end
end
