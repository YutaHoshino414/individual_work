FactoryBot.define do
  factory :profile do
    username { "ユーザー1" }
  end
  factory :profile_second, class: Profile do
    username { "ユーザー2" }
    sex { 1 }
    body_length { 160 }
    introduction { "ユーザー2です" }
  end
  factory :profile_third, class: Profile do
    username { "ユーザー3" }
    sex { 2 }
    body_length { 170 }
  end
  factory :profile_fourth, class: Profile do
    username { "ユーザー4" }
    sex { 1 }
    body_length { 150 }
    introduction { "ユーザー4です!" }
  end

end