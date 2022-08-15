class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }
  validates :deadline, allow_blank: true, comparison: { greater_than: Date.today }

  ALL_STATES = %w[created doing done canceled].freeze

  enum status: ALL_STATES.zip(ALL_STATES).to_h
end
