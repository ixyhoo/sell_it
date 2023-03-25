FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    password { Faker::Internet.password }
    fullname { Faker::Name.name }
    password_confirmation { password }
  end
end

