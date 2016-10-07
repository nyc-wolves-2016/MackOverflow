class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :commenter, class_name: "User"

  has_many :votes, as: :voteable

  validates :body, presence: true
end
