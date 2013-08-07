FactoryGirl.define do
  factory :list do |l|
    user
    date Date.today
  end
end
