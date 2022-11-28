class Intercommunality < ApplicationRecord
  has_many :communes

  after_validation :slug, only: [:create]

  validates :name, presence: true
  validates :siren,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { is: 9 },
            numericality: { only_integer: true }
  validates :form, inclusion: { in: %w[ca cu cc met] }
  validates :slug, uniqueness: true

  def communes_hash
    hash = {}
    communes.each do |commune|
      hash[commune.code_insee.to_s] = commune.name
    end
    hash
  end

  def slug
    self.slug = name.parameterize
  end
end
