class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # adding validations
  validates :first_name, presence: { message: "first name must be given please" }, length: { minimum: 2, too_short: "2 charachters is the minimum allowed" }
  validates :last_name, presence: { message: "last name must be given please" }, length: { minimum: 3, too_short: "2 charachters is the minimum allowed" }
  validates :user_name, presence: { message: "username must be given please" }, uniqueness: { case_sensitive: false }, length: { minimum: 3, too_short: "2 charachters is the minimum allowed" }
  validates :age, presence: { message: "username must be given please" }, numericality: { greater_than_or_equal_to: 18, }
end
