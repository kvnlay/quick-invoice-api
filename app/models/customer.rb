class Customer < ApplicationRecord
  validates :name, :email, :company_name, presence: true
end
