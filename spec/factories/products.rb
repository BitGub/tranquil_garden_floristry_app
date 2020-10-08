FactoryBot.define do
  factory :product do
    sequence(:name)  { |n| "Product #{n}" }
    sequence(:description) { |n| "Product Description #{n}" }
    sequence(:price) { |n| "#{n}.00" }
  end
end
