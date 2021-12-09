module Mutations
  class DestroyProject < BaseMutation
    argument :project_id, ID, required: true

    type Types::ProjectType

    def resolve(**options)
      result = Project.find_by(id: options[:project_id])

      result.destroy if result
    end
  end
end
