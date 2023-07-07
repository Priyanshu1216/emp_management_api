require 'faker'

FactoryBot.define do
  factory :employee do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6) }
    name { Faker::Name.name }
    date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 65) }
    gender { ['Male', 'Female'].sample }
    contact { Faker::PhoneNumber.phone_number }
    association :designation
  end
end
