class Customer < ApplicationRecord
  has_and_belongs_to_many :invoices
  validates :name, :email, :company_name, presence: true
end
