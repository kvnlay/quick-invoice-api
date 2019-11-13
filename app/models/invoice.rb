class Invoice < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items
  has_one :customer
  accepts_nested_attributes_for :customer
end
