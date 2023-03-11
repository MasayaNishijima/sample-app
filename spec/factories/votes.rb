FactoryBot.define do
  factory :vote do
    sequence(:title, '投票_1')
    choices do
      [
        FactoryBot.build(:choice, vote: nil),
        FactoryBot.build(:choice, vote: nil)
      ]
    end
  end
end
