class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  CATEGORIES = ['Caretaker', 'Shelter']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :shelter, dependent: :destroy
  has_many :pets, through: :shelter, dependent: :destroy

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :user_type, acceptance: { accept: CATEGORIES }, presence: true


end
