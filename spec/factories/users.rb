FactoryBot.define do
  factory :user do
    id {1}
    first_name {"Test"}
    last_name {"User"}
    email {"#{first_name}.#{last_name}@example.com".downcase }
    password {"qwerty"}
  end
end
