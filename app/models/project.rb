class Project < ApplicationRecord
  enum :status, {
    pending: 0,
    in_progress: 1,
    completed: 2
  }

  has_many :project_conversations, dependent: :destroy
end