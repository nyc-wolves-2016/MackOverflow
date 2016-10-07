class Vote < ApplicationRecord
  belongs_to :voteable, polymorphic: true
  belongs_to :voter, class_name: "User"

  validates :voter_id, presence: true
  validates :voter_id, uniqueness: { scope: [:voteable_id, :voteable_type] }
end
