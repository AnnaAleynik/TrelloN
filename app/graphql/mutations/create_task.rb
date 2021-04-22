module Mutations
  class CreateTask < Mutations::BaseMutation
    argument :title, String, required: true
    argument :card_id, ID, required: true
    argument :description, String, required: false
    # argument :params, [String], required: true

    type Types::TaskType

    def resolve(card_id:, **params)
      # Task.create!(card_id: card_id, title: title, description: description)
      Task.create!(card_id: card_id, **params)
      # Task.create!(card_id: card_id, title: params[:title], description: params[:description])
    end
  end
end
