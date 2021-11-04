FactoryBot.define do
  factory :user do
    name      { Faker::Name.first_name }
    age       { Faker::Number.number(digits: 2) }
  end
end
