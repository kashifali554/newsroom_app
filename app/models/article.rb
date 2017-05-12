class Article < ApplicationRecord
  validates :headline, presence: true
  validates :img, presence: true
  validates :text, presence: true
  validates :category, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
