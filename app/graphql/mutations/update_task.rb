module Mutations
  class UpdateTask < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: false
    argument :description, String, required: false

    type Types::TaskType

    def resolve(id:, **params)
      # card = Card.find(id) if (Card.find(id).update({title: title}))

      Task.find(id).tap do |task|
        task.update(params)
      end
    end
  end
end
