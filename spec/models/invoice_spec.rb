require "rails_helper"

RSpec.describe Invoice, type: :model do
  describe 'associations' do
    it { should have_many(:items) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:due_date) }
    it { should validate_presence_of(:status) }
  end
end