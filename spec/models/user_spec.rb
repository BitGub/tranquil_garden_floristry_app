require 'rails_helper'

RSpec.describe User, type: :model do

  it 'fails to save when first name is not present' do
    @user = FactoryBot.build(:user, first_name: nil)

    expect(@user).not_to be_valid
  end

  it 'fails to save when last name is not present' do
    @user = FactoryBot.build(:user, last_name: nil)

    expect(@user).not_to be_valid
  end

  it 'fails to save when email is not present' do
    @user = FactoryBot.build(:user, email: nil)
    
    expect(@user).not_to be_valid
  end
  
  it 'fails to save when password is not present' do
    
    @user = FactoryBot.build(:user, password: nil)
    
    expect(@user).not_to be_valid
  end
end
