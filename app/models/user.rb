class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :shelter
  has_many :pets, through: :shelter
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validates :user_type, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :username, presence: true, uniqueness: true
end
