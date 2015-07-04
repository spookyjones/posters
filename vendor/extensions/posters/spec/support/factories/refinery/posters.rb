
FactoryGirl.define do
  factory :poster, :class => Refinery::Posters::Poster do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

