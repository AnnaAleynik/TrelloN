module Mutations
  class UpdateCard < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: true

    type Types::CardType

    def resolve(id:, title:)
      # card = Card.find(id) if (Card.find(id).update({title: title}))
      
      Card.find(id).tap do |card|
        card.update(title: title)
      end
    end
  end
end