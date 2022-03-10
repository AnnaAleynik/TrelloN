FactoryBot.define do
  factory :task do
    card

    title { "Task" }
    description { "Description" }
  end
end
