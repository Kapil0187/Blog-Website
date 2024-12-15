class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 125}
  validates :description, presence: true, length: {maximum: 1000}
  validates_inclusion_of :is_bloggable, in: [true, false]
end
