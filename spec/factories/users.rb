FactoryBot.define do
  factory :user_02, class: User do
    email { 'user02@test.com' }
    password { 'password' }
  end
  factory :user_03, class: User do
    email { 'user03@test.com' }
    password { 'password' }
  end
  factory :user_04, class: User do
    email { 'user04@test.com' }
    password { 'password' }
  end

end