require 'rails_helper'

RSpec.describe "products/index.html.erb", type: :view do
  
    context 'with two products' do
        
        before(:each) do
            assign(:products,   [FactoryBot.create(:product),
                                FactoryBot.create(:product, name: "Product2")])
        end

        it 'renders both products' do  
            render

            expect(rendered).to match /ProductName/
            expect(rendered).to match /Product2/
        end
    end
end