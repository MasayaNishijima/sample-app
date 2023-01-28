FactoryBot.define do
  factory :choice do
    name { Faker::Name.name }
    association  :vote
  end
end
