FactoryBot.define do
  factory :user do
#    name { "rspec" }
#    password { "rspecpass" }
#    email { "rspec@rspec.com" }
    sequence(:name) { |n| "TEST_NAME#{n}"}
    sequence(:password) { |n| "TEST_PASS#{n}"}
    sequence(:email) { |n| "TEST#{n}@example.com"}
#    password = Faker::Internet.password(8)
#    nickname { Faker::Name.last_name }
#    email { Faker::Internet.free_email }
#    password { password }
#    password_confirmation { password }
  end
end
