class Item < ApplicationRecord
  belongs_to :user
  belongs_to :invoices
  store :tax, accessors: %i[rate type name], coder: JSON, prefix: true
  validates :name, :quantity, :price, :total, :tax_rate, :tax_type, presence: true
  validates :tax_type,  inclusion: {in: %w[paid unpaid partial],
                    message: `%<value> is not a valid type`}
end
