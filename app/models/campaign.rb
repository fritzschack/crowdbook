class Campaign < ApplicationRecord
  belongs_to :user
  has_many :performances, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :ticket_categories, dependent: :destroy

  has_many :musicians, through: :performances
  has_many :tickets, through: :ticket_categories, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :genre, inclusion: { in: ["Industrial & Gothic", "(Heavy) Metal", "Rock 'n' Roll", "Golden Age", "Punk (Rock) / (New) Wave", "Hardcore (Punk)", "Alternative / Indie (Rock)", "Contemporary (Rock)", "Pop (Music)", "Country", "Rhythm 'n' Blues (R&B)", "Gospel & Pioneers", "Blues", "Jazz", "Jamaican (Music) / Reggae", "Rap / Hip-hop Music", "Breakbeat", "Drum 'n' Bass / Jungle", "Hardcore (Techno)", "Techno", "House", "Trance", "Downtempo / Ambient"] }

  accepts_nested_attributes_for :performances
  accepts_nested_attributes_for :ticket_categories
end
