class Item < ApplicationRecord
  belongs_to :invoices
  store :tax, accessors: %i[rate type name], coder: JSON, prefix: true
  validates :tax_rate, :tax_type, presence: true
  validates :type,  inclusion: {in: %w[paid unpaid partial],
                    message: `%<value> is not a valid type`}
end
