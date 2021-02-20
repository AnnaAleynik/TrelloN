module Mutations
  class DestroyTask < Mutations::BaseMutation
    argument :id, ID, required: true

    type Types::TaskType

    def resolve(id:)
      Task.destroy(id)
    end
  end
end