FactoryBot.define do
  # Choice単体では生成しないように(voteを生成する)
  factory :choice do
    name { Faker::Name.name }
  end
end
