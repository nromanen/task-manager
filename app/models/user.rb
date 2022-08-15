class User < ApplicationRecord
  validates :nick, uniqueness: true, allow_blank: true
  validates :phone, uniqueness: true, presence: true, format: { with: /\+38\d{10}\z/, message: "should be in format +38dddddddddd" }
end
