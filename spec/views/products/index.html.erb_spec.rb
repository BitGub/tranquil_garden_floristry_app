require 'rails_helper'

RSpec.describe "products/index.html.erb", type: :view do
  
    context 'with two products' do
        
        before(:each) do
            assign(:products,   [FactoryBot.create(:product, name: "Product 1"),
                                FactoryBot.create(:product, name: "Product 2")])
        end

        it 'renders both products' do  
            render

            expect(rendered).to match /Product 1/
            expect(rendered).to match /Product 2/
        end
    end
end