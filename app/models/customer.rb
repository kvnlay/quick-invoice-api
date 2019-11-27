class Customer < ApplicationRecord
  belongs_to :user
  validates :name, :email, :company_name, presence: true
end
