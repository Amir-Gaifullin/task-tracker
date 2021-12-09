module Mutations
  class UpdateTask < BaseMutation
    argument :task_id, ID, required: true
    argument :project_id, ID, required: true
    argument :title, String, required: true
    argument :description, String, required: false
    argument :deadline_at, GraphQL::Types::ISO8601DateTime, required: true

    type Types::TaskType

    def resolve(**options)
      result = ::UpdateTask.call(
        task_params: options.slice(:project_id, :title, :description, :deadline_at),
        current_user: current_user,
        task_id: options[:task_id]
      )

      result.task if result.success?
    end
  end
end
