class Answer < ApplicationRecord
  belongs_to :answerer, class_name: "User"
  belongs_to :question

  has_many :votes, as: :voteable
  has_many :voters, through: :votes

  has_many :comments, as: :commentable
  has_many :commenters, through: :comments, source: :commenter

  validates :body, presence: true
  validates :answerer_id, presence: true
  validates :best_status, numericality: { only_integer: true }
end
