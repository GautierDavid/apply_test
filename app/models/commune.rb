class Commune < ApplicationRecord
  belongs_to :intercommunality, optional: true
  has_many :commune_streets
  has_many :streets, through: :commune_streets

  validates :name, presence: true
  validates :code_insee, presence: true, length: { is: 5 }, numericality: { only_integer: true }

  def self.search(string)
    Commune.where('LOWER(name) LIKE ?',
                  "%#{Commune.sanitize_sql_like(string.downcase)}%")
  end

  def self.to_hash
    hash = {}
    Commune.all.each do |commune|
      hash[commune.code_insee.to_s] = commune.name
    end
    hash
  end
end
