FactoryBot.define do
  factory :jwt_denylist do
    jti { "MyString" }
    expired_at { "2023-03-26 15:10:57" }
  end
end
