module Mutations
  class DestroyCard < Mutations::BaseMutation
    argument :id, ID, required: true

    type Types::CardType

    def resolve(id:)
      Card.destroy(id)
    end
  end
end
