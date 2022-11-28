class Street < ApplicationRecord
  has_many :commune_streets
  has_many :communes, through: :commune_streets

  validates :title, presence: true
  validates :from, numericality: { only_integer: true, allow_nil: true }
  validates :to, numericality: { only_integer: true, allow_nil: true }
  validates :to, comparison: { greater_than: :from }
end
