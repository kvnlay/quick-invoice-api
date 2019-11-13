class Item < ApplicationRecord
  belongs_to :invoices
  has_one :tax
  accepts_nested_attributes_for :tax
end
