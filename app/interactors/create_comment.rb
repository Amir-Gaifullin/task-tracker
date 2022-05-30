class CreateComment
  include Interactor::Organizer

  organize CreateComment::SaveRecord
end
