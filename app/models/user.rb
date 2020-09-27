class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # VALIDATIONS
  validates :first_name, presence: { message: "first name must be given please" }, length: { minimum: 2, too_short: "...2 charachters is the minimum allowed" }
  validates :last_name, presence: { message: "last name must be given please" }, length: { minimum: 3, too_short: "...2 charachters is the minimum allowed" }
  validates :user_name, presence: { message: "username must be given please" }, uniqueness: { case_sensitive: false }, length: { minimum: 3, too_short: "...2 charachters is the minimum allowed" }
  validates :age, presence: { message: "age must be selected please" }, numericality: { greater_than_or_equal_to: 18, }
  validates :gender, presence: { message: "gender must be selected please" }, inclusion: { in: %w(male female), message: "%{value} is not a valid gender"}


  # other Validations options
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :user_name, presence: true
  #validates :age, presence: true
  #validates :gender, presence: true

  #validates :first_name, presence: { message: "first name must be given please" }, length: { minimum: 2, too_short: "...2 charachters is the minimum allowed" }
  #validates :last_name, presence: { message: "last name must be given please" }, length: { minimum: 3, too_short: "2 charachters is the minimum allowed" }
  #validates :user_name, presence: { message: "username must be given please" }, uniqueness: { case_sensitive: false }, length: { minimum: 3, too_short: "2 charachters is the minimum allowed" }
  #validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, too_short: "2 charachters is the minimum allowed" }
  #validates :age, presence: { message: "age must be given please" }, numericality: { greater_than_or_equal_to: 18, }
  #validates :age, presence: true, numericality: { greater_than_or_equal_to: 18, }
end
