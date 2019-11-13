class Tax < ApplicationRecord
  belongs_to :items
  validates :name, :type, :value, presence: true
end
