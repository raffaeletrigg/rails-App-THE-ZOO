class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # adding validations
  validates :first_name, presence: true, length: { minimum: 2, too_short: "2 charachters is the minimum allowed" }
  validates :last_name, presence: true, lenght: { minimum: 3, too_short: "2 charachters is the minimum allowed" }
end
