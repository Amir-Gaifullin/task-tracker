module Mutations
  class DestroyComment < BaseMutation
    argument :comment_id, ID, required: true

    type Types::CommentType

    def resolve(**options)
      result = Comment.find_by(id: options[:comment_id])

      result.destroy if result
    end
  end
end
