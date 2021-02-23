FactoryBot.define do
  factory :category_01, class:Category do
    name {"メンズ"}
    ancestry {nil}
  end
  factory :category_02, class:Category do
    name {"レディース"}
    ancestry {nil}
  end
  factory :category_03, class:Category do
    name {"キッズ"}
    ancestry {nil}
  end

end