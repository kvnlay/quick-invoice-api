class Invoice < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items
  has_and_belongs_to_many :customers
  accepts_nested_attributes_for :customers
end
