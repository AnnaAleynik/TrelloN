module Types
  class CardType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :tasks, [Types::TaskType], null: true
  end
end
