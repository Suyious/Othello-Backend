class List < ApplicationRecord
  belongs_to :board

  validates :status, inclusion: { in: %w(todo doing done) }
end
