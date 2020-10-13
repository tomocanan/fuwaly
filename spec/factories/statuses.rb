FactoryBot.define do
  factory :status do
    date              { 2020-10-1 }
    feeling_id        { 2 }
    sleeping_id       { 2 }
    happiness_id      { 2 }
    taking_id         { 2 }

    association :user
  end
end
