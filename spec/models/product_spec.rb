require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'saves a valid category' do
    category = FactoryBot.build(:product)
    
    expect(category).to be_valid
  end
  
  it 'does not save when name is blank' do
    category = FactoryBot.build(:product, name: nil)
    expect(category).not_to be_valid
  end
  
end
