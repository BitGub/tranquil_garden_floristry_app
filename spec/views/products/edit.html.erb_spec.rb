require 'rails_helper'

RSpec.describe "products/edit.html.erb", type: :view do
  

  before(:each) do
    assign(:product, FactoryBot.create(:product, name: "Product 1", price: "5.0"))
  end
  
  it 'renders edit view' do
    render

    expect(rendered).to match /Product 1/
    expect(rendered).to match /Product Description/
    expect(rendered).to match /5.0/
  end
end