class Commune < ApplicationRecord
  belongs_to :intercommunality
  has_many :streets

  validates :name, presence: true
  validates :code_insee, presence: true, length: { is: 5 }, numericality: { only_integer: true }
  validates :intercommunality, presence: false
end
