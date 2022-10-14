class Lesson < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :when, presence: true
end
