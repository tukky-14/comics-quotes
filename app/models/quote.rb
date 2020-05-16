class Quote < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
end
