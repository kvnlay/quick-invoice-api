class Tax < ApplicationRecord
  belongs_to :user
  validates :type, :rate, presence: true
end
