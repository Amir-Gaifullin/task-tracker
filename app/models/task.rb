class Task < ApplicationRecord
  ALLOWED_STATUSES = %w[not_started started finished draft].freeze

  belongs_to :project
  belongs_to :user, optional: true

  validates :title, presence: true
  validates :title, length: { minimum: 5 }
  validates :deadline_at, presence: true
  validates :status, inclusion: { in: ALLOWED_STATUSES }
end
