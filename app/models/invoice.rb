class Invoice < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items
  validates :title, :due_date, :status, presence: true
  validates :amount_paid, presence: true, if: :status_partial?
  validates :status, inclusion: { in: %w[partial unpaid paid] }

  def status_partial?
    status == 'partial'
  end
end
