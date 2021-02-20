module Mutations
  class CreateCard < Mutations::BaseMutation
    argument :title, String, required: true

    type Types::CardType

    def resolve(title:)
      Card.create!(title: title)
    end
  end
end