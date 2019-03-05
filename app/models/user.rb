class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :campaigns, dependent: :destroy
  has_many :orders

  has_many :tickets, through: :orders

  mount_uploader :profile_picture_url, PhotoUploader
end
