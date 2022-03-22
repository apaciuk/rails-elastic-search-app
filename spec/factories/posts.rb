FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
    topic { "MyString" }
    user { nil }
  end
end
