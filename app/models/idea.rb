class Idea < ApplicationRecord
  validates :name, :body, presence: true
    belongs_to :user

end
