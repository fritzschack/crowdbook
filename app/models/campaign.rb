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
  validates :genre, inclusion: { in: ["Pop", "Rock 'n' Roll", "Rap / Hip-hop Music", "Techno", "House", "Alternative / Indie (Rock)", "Trance", "Downtempo / Ambient", "Electronic", "Industrial & Gothic", "(Heavy) Metal", "Golden Age", "Punk (Rock) / (New) Wave", "Hardcore (Punk)", "Contemporary (Rock)", "Country", "Rhythm 'n' Blues (R&B)", "Gospel & Pioneers", "Blues", "Jazz", "Jamaican (Music) / Reggae", "Breakbeat", "Drum 'n' Bass / Jungle", "Hardcore (Techno)"] }

  accepts_nested_attributes_for :performances
  accepts_nested_attributes_for :ticket_categories

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
