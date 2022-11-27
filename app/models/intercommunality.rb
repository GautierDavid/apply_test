class Intercommunality < ApplicationRecord
  has_many :communes

  validates :name, presence: true
  validates :siren,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { is: 9 },
            numericality: { only_integer: true }
  validates :form, inclusion: { in: %w[ca cu cc met] }
end
