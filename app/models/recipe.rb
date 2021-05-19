class Recipe < ApplicationRecord
  validates :name,  presence: true, length: { minimum: 5 }
  validates :preparation,  presence: true
  validates :content,  presence: true
  validates :ingredients,  presence: true
  belongs_to :user
end
