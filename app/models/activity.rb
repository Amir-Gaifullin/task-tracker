class Activity < ApplicationRecord
  ALLOWED_KINDS = %w[project_created project_update].freeze

  belongs_to :user
  belongs_to :target, polymorphic: true

  validates :kind, inclusion: { in: ALLOWED_KINDS }
end
