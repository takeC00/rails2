class User < ApplicationRecord
  mount_uploader :icon, IconUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :icon, presence: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  
end

