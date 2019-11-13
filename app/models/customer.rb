class Customer < ApplicationRecord
  belongs_to :invoice
  validates :name, :email, :company_name, presence: true
end
