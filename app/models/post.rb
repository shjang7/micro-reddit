class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  validates :title, presence: true
  validates :content, presence: true
end
