module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :cards, [Types::CardType], null: false
    field :card, Types::CardType, null: true do
      argument :id, Integer, required: true
    end
    field :task, Types::TaskType, null: true do
      argument :id, Integer, required: true
    end
    field :tasks, [Types::TaskType], null: true
    # # Add root-level fields here.
    # # They will be entry points for queries on your schema.
    # field :test_field, String, null: false,
    # description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    def cards
      Card.all
    end

    def card(id:)
      Card.find(id)
    end

    def tasks
      Task.all
    end

    def task(id:)
      Task.find(id)
    end
    
  end
end
