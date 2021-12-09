module Mutations
  class DestroyTask < BaseMutation
    argument :task_id, ID, required: true

    type Types::TaskType

    def resolve(**options)
      result = Task.find_by(id: options[:task_id])

      result.destroy if result
    end
  end
end
