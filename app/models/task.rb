class Task < ApplicationRecord
    belongs_to :user

    ALL_STATES = %w[created doing done canceled].freeze

    enum status: ALL_STATES.zip(ALL_STATES).to_h
  

end
