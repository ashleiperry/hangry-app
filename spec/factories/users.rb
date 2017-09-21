FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@#{Faker::Lovecraft.location}.com" }
    sequence(:username) { |n| "#{Faker::Number.number(12)}" }
    first_name 'Jane'
    last_name 'Doe'
    zip_code '19103'
    password "#{Faker::Lovecraft.word}#{Faker::Lovecraft.word}"
  end
end
