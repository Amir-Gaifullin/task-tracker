module Resolvers
  class Comment < Resolvers::Base
    argument :id, ID, required: true

    type Types::CommentType, null: false
rue
    def resolve(**params)
      ::CommentType.find_by(id: params[:id]) 
    end
  end
end
