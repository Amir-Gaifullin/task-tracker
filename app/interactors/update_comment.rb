class UpdateComment
  include Interactor::Organizer

  organize UpdateComment::SaveRecord
end
