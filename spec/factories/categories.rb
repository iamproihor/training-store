FactoryBot.define do
  factory :category do
    slug { FFaker::Internet.slug }
    title { FFaker::Internet.slug }
  end
end
