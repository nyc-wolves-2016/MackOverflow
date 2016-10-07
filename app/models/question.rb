class Question < ApplicationRecord
  belongs_to :asker, class_name: "User"

  has_many :votes, as: :voteable
  has_many :answers
  has_many :answerers, through: :answers, source: :answerer

  has_many :comments, as: :commentable
  has_many :commenters, through: :comments, source: :commenter

  validates :title, presence: true
  validates :asker_id, presence: true
end
