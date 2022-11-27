class Street < ApplicationRecord
  has_many :communes

  validates :title, presence: true
  validates :from, numericality: { only_integer: true } unless :from.nil?
  validates :to, numericality: { only_integer: true } unless :to.nil?
  validates :to, comparison: { greater_than: :from }
end
