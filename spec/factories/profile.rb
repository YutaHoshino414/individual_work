FactoryBot.define do
  factory :profile do
    username { "ユーザー1" }
  end
  factory :profile_second, class: Profile do
    username { "ユーザー2" }
  end
  factory :profile_third, class: Profile do
    username { "ユーザー3" }
  end
end