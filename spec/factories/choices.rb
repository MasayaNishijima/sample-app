FactoryBot.define do
  # Choice単体では生成できません
  factory :choice do
    name { Faker::Name.name }
  end
end
