class Tax < ApplicationRecord
  validates :name, :type, :value, presence: true
end
